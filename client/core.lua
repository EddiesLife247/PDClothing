local QBCore = exports['qb-core']:GetCoreObject()
local activeZoneIds = {}
local lastWornOutfit = nil -- This will store the outfit data
local isWearingUniform = false -- This is our flag



local function DebugPrint(msg)
    if Config.Debug then
        print("^3[xt-pduniforms]^7 " .. msg)
    end
end

local function isPlayerMale()
    local playerPed = PlayerPedId()
    local model = GetEntityModel(playerPed)
    -- Compares the player's model hash to the standard male freemode ped hash
    return model == `mp_m_freemode_01`
end

local function fillMissingComponents(components)
    local filled = {}
    local found = {}

    for _, comp in ipairs(components) do
        table.insert(filled, comp)
        found[comp.component_id] = true
    end

    for i = 0, 11 do
        if not found[i] then
            table.insert(filled, {
                component_id = i,
                drawable = -1,
                texture = 0
            })
        end
    end

    return filled
end

local function applyUniform(outfit)
    -- We've wrapped the main logic in a function so we can call it at the right time.
    local function applyOutfitLogic()
        local outfitDataForPed
        if isPlayerMale() then
            outfitDataForPed = outfit.male
        else
            outfitDataForPed = outfit.female
        end

        if not outfitDataForPed then
            lib.notify({
                title = 'Uniform Not Available',
                description = 'This uniform is not available for your character model.',
                type = 'error'
            })
            return
        end

        local finalOutfit = table.clone(outfitDataForPed)
        finalOutfit.components = fillMissingComponents(finalOutfit.components or {})
        finalOutfit.model = nil

        exports['illenium-appearance']:setPlayerAppearance(finalOutfit)

        lib.notify({
            title = 'Uniform Applied',
            description = outfit.label,
            type = 'success'
        })
        isWearingUniform = true
    end

    -- If we are NOT wearing a uniform, we need to save our current one first.
    if not isWearingUniform then
        -- 1. Ask the server for our current appearance.
        lib.callback("illenium-appearance:server:getAppearance", false, function(appearance)
            if appearance then
                -- 2. Save the appearance the server sent back.
                lastWornOutfit = appearance
                DebugPrint("Last worn outfit has been saved.")
            end
            -- 3. THEN, apply the new uniform.
            applyOutfitLogic()
        end)
    else
        -- If we are already wearing a uniform, just apply the new one immediately.
        applyOutfitLogic()
    end
end


-- This single function replaces BOTH openUniformMenu and openJobUniformMenu
local function openUniformMenu(jobType)
    local uniformData = Config.Uniforms[jobType]
    if not uniformData then
        DebugPrint("No uniform data found for job: " .. jobType)
        return
    end

    local function buildAndShowMenu(certs)
        local PlayerData = QBCore.Functions.GetPlayerData()
        local jobName = PlayerData.job.name
        local jobGrade = PlayerData.job.grade.level or 0
        local options = {}

        -- ## ADD THIS BLOCK TO CREATE THE NEW OPTION ##
        table.insert(options, {
            title = 'Civilian Clothes',
            description = 'Return to your off-duty outfit',
            icon = 'fas fa-street-view',
            onSelect = applyCivilianOutfit -- Calls the new function
        })
        -- #############################################

        -- ## ADD THIS BLOCK TO CREATE THE NEW CONDITIONAL OPTION ##
        if lastWornOutfit then
            table.insert(options, {
                title = 'Last Outfit',
                description = 'Return to the outfit you were wearing before',
                icon = 'fas fa-history',
                onSelect = applyLastWornOutfit -- Calls the new function
            })
        end
        -- ########################################################

        local sortedUniforms = {}
        for _, outfit in pairs(uniformData) do
            table.insert(sortedUniforms, { label = outfit.label, data = outfit })
        end
        table.sort(sortedUniforms, function(a, b) return a.label < b.label end)

        for _, entry in ipairs(sortedUniforms) do
            local outfit = entry.data
            local requiredCerts = outfit.requiredCerts or {}
            local hasCert = (certs == nil) or (#requiredCerts == 0)
            if certs then
                for _, cert in ipairs(requiredCerts) do
                    if certs[cert] then
                        hasCert = true
                        break
                    end
                end
            end

            local requiredGrade = outfit.requiredGrade
            local gradeMatches
            if requiredGrade == false or requiredGrade == nil then
                gradeMatches = true
            elseif type(requiredGrade) == "number" then
                gradeMatches = (jobGrade == requiredGrade)
            end  
            
            local jobMatches = not outfit.requiredJob or outfit.requiredJob == jobName

            -- Use this for debugging if needed:
            DebugPrint(string.format("Checking '%s': Job is '%s', Requires '%s' -> jobMatches=%s, gradeMatches=%s", outfit.label, jobName, tostring(outfit.requiredJob), tostring(jobMatches), tostring(gradeMatches)))

            if hasCert and gradeMatches and jobMatches then
                table.insert(options, {
                    title = outfit.label,
                    icon = 'tshirt',
                    onSelect = function()
                        DebugPrint("Player selected uniform: " .. outfit.label)
                        applyUniform(outfit)
                    end
                })
            end
        end

        if #options == 0 then
            lib.notify({
                title = 'No Access',
                description = 'You do not have access to any uniforms for this job.',
                type = 'error'
            })
            return
        end

        lib.registerContext({
            id = jobType .. '_uniform_menu',
            title = jobType:gsub("^%l", string.upper) .. ' Uniforms',
            options = options
        })
        lib.showContext(jobType .. '_uniform_menu')
    end

    if Config.AllowedPDJobs[jobType] then
        lib.callback('xt-pduniforms:getPlayerCerts', false, function(certs)
            if not certs then return end
            buildAndShowMenu(certs)
        end)
    else
        buildAndShowMenu(nil)
    end
end
local function isNearAny(vecList, maxDistance)
    local playerCoords = GetEntityCoords(cache.ped)
    for _, loc in pairs(vecList or {}) do
        if #(playerCoords - loc) <= (maxDistance or 3.0) then
            return true
        end
    end
    return false
end
-- ox_target zone registration
local function registerUniformZones()
    for _, zoneId in ipairs(activeZoneIds) do
        exports.ox_target:removeZone(zoneId)
    end
    activeZoneIds = {}

    for i, zone in ipairs(Config.UniformZones) do
        local jobType = zone.jobtype
        if not Config.Uniforms[jobType] then goto continue end

        local zoneId = "uniform_zone_" .. i
        
        exports.ox_target:addBoxZone({
            name = zoneId,
            coords = zone.coords,
            size = zone.size,
            rotation = zone.heading,
            debug = Config.Debug,
            options = {
                {
                    label = ("Access %s Uniforms"):format(jobType:gsub("^%l", string.upper)),
                    icon = 'fas fa-tshirt',
                    onSelect = function()
                        openUniformMenu(jobType)
                    end,
                    -- ## THIS IS THE IMPROVED LOGIC ##
                    canInteract = function()
                        local PlayerData = QBCore.Functions.GetPlayerData()
                        if not PlayerData.job.onduty then return false end

                        -- For police zones, check if the player's job is in the allowed list
                        if Config.AllowedPDJobs[jobType] then
                            return Config.AllowedPDJobs[PlayerData.job.name]
                        end
                        
                        -- For all other zones (fire, ambulance, burgershot, etc.),
                        -- check for an exact job name match.
                        return PlayerData.job.name == jobType
                    end
                }
            }
        })

        table.insert(activeZoneIds, zoneId)
        ::continue::
    end
end-- Run on player load

local function applyCivilianOutfit()
    lib.callback("illenium-appearance:server:getAppearance", false, function(appearance)
        if appearance then
            -- Process the outfit data just like we do for uniforms
            local finalOutfit = table.clone(appearance)
            finalOutfit.components = fillMissingComponents(finalOutfit.components or {})
            finalOutfit.model = nil -- Prevent the model from changing

            exports['illenium-appearance']:setPlayerAppearance(finalOutfit)
            
            lib.notify({
                title = 'Outfit Changed',
                description = 'Changed to civilian clothes.',
                type = 'success'
            })
            -- Reset the flags when going off-duty/civilian
            isWearingUniform = false
            lastWornOutfit = nil -- Clear the saved outfit
        else
            lib.notify({
                title = 'Error',
                description = 'Could not retrieve your saved outfit from the server.',
                type = 'error'
            })
        end
    end)
end

local function applyLastWornOutfit()
    if lastWornOutfit then
        -- Process the outfit data just like we do for uniforms
        local finalOutfit = table.clone(lastWornOutfit)
        finalOutfit.components = fillMissingComponents(finalOutfit.components or {})
        finalOutfit.model = nil -- Prevent the model from changing

        exports['illenium-appearance']:setPlayerAppearance(finalOutfit)
        
        lib.notify({
            title = 'Outfit Changed',
            description = 'Changed to your last worn outfit.',
            type = 'success'
        })
        -- Reset the flags, as you're no longer in a "job" uniform
        isWearingUniform = false
        lastWornOutfit = nil -- Clear the saved outfit after using it
    else
        lib.notify({
            title = 'Error',
            description = 'No last outfit has been saved.',
            type = 'error'
        })
    end
end
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    Wait(1000)
    registerUniformZones()
end)

-- Run immediately if player already loaded (e.g., resource restarted)
CreateThread(function()
    while not QBCore do Wait(100) end
    Wait(500)

    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData and PlayerData.job then
        registerUniformZones()
    end
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    Wait(500) -- allow some buffer time for job data to settle
    registerUniformZones()
end)

