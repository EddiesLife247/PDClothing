local QBCore = exports['qb-core']:GetCoreObject()

lib.callback.register('xt-pduniforms:getPlayerCerts', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return {} end

    return Player.PlayerData.metadata["pdcerts"] or {}
end)
