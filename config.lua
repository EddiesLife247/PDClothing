Config = {}

Config.Debug = false

Config.AllowedPDJobs = {
    police = true,
}

Config.UniformZones = {
    {
        label = "PD Locker Room",
        coords = vector3(1849.38, 3696.39, 34.26),
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "police"
    }, {
        label = "PD Locker Room",
        coords = vector3(-440.48, 5996.99, 31.72),
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "police"

    }, {
        label = "PD Locker Room",
        coords = vector3(-2172.33, 3256.83, 32.81),
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "police"

    }, {
        label = "PD Locker Room",
        coords = vector3(-1084.16, -826.81, 19.3),
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "police"

    }, {
        label = "PD Locker Room",
        coords = vector3(449.31, -991.92, 30.69),
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "police"

    }, {
        label = "LS Customs",
        coords = vector3(-339.56, -162.93, 45.06),
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "lscustoms"

    }, -- ?? NEW: Ambulance Locker Room
      {
        label = "Burgershot",
        coords = vector3(-1198.45, -901.57, 13.89),
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "burgershot"

    }, -- ?? NEW: Ambulance Locker Room
    {
        label = "Ambulance Locker Room",
        coords = vector3(-444.87, -309.65, 34.35), -- match Config.AmbulanceUniforms.locations
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "ambulance"

    }, {
        label = "Ambulance Locker Room",
        coords = vector3(1834.65, 3690.21, 34.27), -- match Config.AmbulanceUniforms.locations
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "ambulance"

    }, {
        label = "Ambulance Locker Room",
        coords = vector3(-247.25, 6327.39, 32.44), -- match Config.AmbulanceUniforms.locations
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "ambulance"

    }, -- ?? NEW: FIRE Locker Room
    {
        label = "Fire Locker Room",
        coords = vector3(1231.8, -1489.53, 34.69), -- match Config.AmbulanceUniforms.locations
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "fire"

    }, {
        label = "Fire Locker Room",
        coords = vector3(-366.87, 6106.33, 31.44), -- match Config.AmbulanceUniforms.locations
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "fire"

    }, {
        label = "Fire Locker Room",
        coords = vector3(1691.27, 3587.29, 35.62), -- match Config.AmbulanceUniforms.locations
        size = vec3(3, 3, 3),
        heading = 0.0,
        jobtype = "fire"

    }

}
Config.Uniforms = {
    ambulance = {
        emt_basic = {
            label = "Basic EMT Uniform",
            requiredGrade = 0,
            requiredJob = "ambulance",
            outfitData = {
                model = "mp_m_freemode_01",
                components = {{component_id = 3, drawable = 1, texture = 0}}
            }
        },
    },
    lscustoms = {
        customspurple = {
            label = "LS Customs Purple",
            requiredGrade = false,
            requiredJob = "lscustoms",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 556, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 86, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 205, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 25, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 0, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = -1, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 835, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 16, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 143, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 237, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 2, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 253, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        customsblue = {
            label = "LS Customs Blue",
            requiredGrade = false,
            requiredJob = "lscustoms",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 556, texture = 1}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 86, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 205, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 25, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 0, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = -1, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 835, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 16, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 143, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 237, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 2, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 253, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        customsblack = {
            label = "LS Customs Black",
            requiredGrade = false,
            requiredJob = "lscustoms",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 556, texture = 2}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 86, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 205, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 25, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 0, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = -1, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 835, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 16, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 143, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 237, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 2, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 253, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        customsgrey = {
            label = "LS Customs Grey",
            requiredGrade = false,
            requiredJob = "lscustoms",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 556, texture = 3}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 86, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 205, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 25, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 0, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = -1, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 835, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 16, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 143, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 237, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 2, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 253, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },

    },

    burgershot = {
        burgeruniform = {
            label = "Burgershot Uniform",
            requiredGrade = false,
            requiredJob = "burgershot",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 555, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 205, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 204, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 126, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 0, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 242, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 835, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 16, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 143, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 237, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 2, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 253, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
    },
    fire = {
        fire_suit = {
            label = "Firefighter Turnouts",
            requiredGrade = false,
            requiredJob = "fire",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 545, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 198, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 129, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 219, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 697, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 294, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 150, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 230, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        stationgear = {
            label = "Firefighter Station Blue",
            requiredGrade = false,
            requiredJob = "fire",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 544, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 300, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 0, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 196, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 126, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = -1, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 695, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 16, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 50, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 292, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 159, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = -1, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        stationred = {
            label = "Firefighter Station Red",
            requiredGrade = false,
            requiredJob = "fire",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 543, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 300, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 0, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 196, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 126, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = -1, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 696, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 16, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 52, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 292, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 159, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = -1, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        FireHV = {
            label = "Fire HighVis",
            requiredGrade = false,
            requiredJob = "fire",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 546, texture = 1}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 198, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 129, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 219, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 698, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 294, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 150, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 230, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        FireSafety = {
            label = "Fire Safety",
            requiredGrade = false,
            requiredJob = "fire",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 546, texture = 2}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 198, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 129, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 219, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 698, texture = 2}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 294, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 150, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 230, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        FireOps = {
            label = "Fire Ops Commander",
            requiredGrade = false,
            requiredJob = "fire",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 546, texture = 6}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 198, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 129, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 219, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 698, texture = 6}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 294, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 150, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 230, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        FireIncidentComm = {
            label = "Fire Incident Commander",
            requiredGrade = false,
            requiredJob = "fire",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 546, texture = 10}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 198, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 129, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 219, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 698, texture = 10}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 294, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 150, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 230, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        FireCSU = {
            label = "Fire Command Support",
            requiredGrade = false,
            requiredJob = "fire",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 546, texture = 18}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 198, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 129, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 219, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 698, texture = 18}, -- JACKET
                    {component_id = 8, drawable = 0, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 294, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 150, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 230, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        }
    },
    police = {
        arvpc = {
            label = "Armed Response - PC",
            requiredCerts = {'ftoc'},
            requiredGrade = 0,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 229, texture = 0}, -- HAT
                    {component_id = 1, drawable = 122, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 536, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 211, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 67, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 103, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 214, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 228, texture = 0}, -- HAT
                    {component_id = 1, drawable = 80, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 686, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 101, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 291, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 228, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        arvmserg = {
            label = "Armed Response - SERGENT",
            requiredCerts = {'ftoc'},
            requiredGrade = 2,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 229, texture = 0}, -- HAT
                    {component_id = 1, drawable = 122, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 536, texture = 1}, -- JACKET
                    {component_id = 8, drawable = 211, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 67, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 103, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 214, texture = 2}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 228, texture = 0}, -- HAT
                    {component_id = 1, drawable = 80, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 686, texture = 1}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 101, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 291, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 228, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        arvmins = {
            label = "Armed Response - INSPECTOR",
            requiredCerts = {'ftoc'},
            requiredGrade = 3,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 229, texture = 0}, -- HAT
                    {component_id = 1, drawable = 122, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 536, texture = 2}, -- JACKET
                    {component_id = 8, drawable = 211, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 67, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 103, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 214, texture = 5}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 228, texture = 0}, -- HAT
                    {component_id = 1, drawable = 80, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 686, texture = 2}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 101, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 291, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 228, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        arvmcins = {
            label = "Armed Response - CHIEF INSEPECTOR",
            requiredCerts = {'ftoc'},
            requiredGrade = 4,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 229, texture = 0}, -- HAT
                    {component_id = 1, drawable = 122, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 536, texture = 3}, -- JACKET
                    {component_id = 8, drawable = 211, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 67, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 103, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 214, texture = 7}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 228, texture = 0}, -- HAT
                    {component_id = 1, drawable = 80, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 686, texture = 3}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 101, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 291, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 228, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        arvmsuper = {
            label = "Armed Response - SUPERINTENDENT",
            requiredCerts = {'ftoc'},
            requiredGrade = 5,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 229, texture = 0}, -- HAT
                    {component_id = 1, drawable = 122, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 536, texture = 4}, -- JACKET
                    {component_id = 8, drawable = 211, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 67, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 103, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 214, texture = 8}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 228, texture = 0}, -- HAT
                    {component_id = 1, drawable = 80, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 686, texture = 4}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 101, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 291, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 228, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        arvmcsuper = {
            label = "Armed Response - ARMED CHIEF SUPER INTENDENT",
            requiredCerts = {'ftoc'},
            requiredGrade = 6,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 229, texture = 0}, -- HAT
                    {component_id = 1, drawable = 122, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 536, texture = 5}, -- JACKET
                    {component_id = 8, drawable = 211, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 67, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 103, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 214, texture = 9}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 228, texture = 0}, -- HAT
                    {component_id = 1, drawable = 80, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 686, texture = 5}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 101, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 291, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 228, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        arvmaccon = {
            label = "Armed Response - Assistant Chief Constable",
            requiredCerts = {'ftoc'},
            requiredGrade = 7,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 229, texture = 0}, -- HAT
                    {component_id = 1, drawable = 122, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 536, texture = 6}, -- JACKET
                    {component_id = 8, drawable = 211, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 67, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 103, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 214, texture = 13}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 228, texture = 0}, -- HAT
                    {component_id = 1, drawable = 80, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 686, texture = 6}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 101, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 291, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 228, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        arvmdccon = {
            label = "Armed Response - Deputy Chief Constable",
            requiredCerts = {'ftoc'},
            requiredGrade = 8,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 229, texture = 14}, -- HAT
                    {component_id = 1, drawable = 122, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 536, texture = 9}, -- JACKET
                    {component_id = 8, drawable = 211, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 67, texture = 9}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 103, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 214, texture = 14}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 228, texture = 0}, -- HAT
                    {component_id = 1, drawable = 80, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 686, texture = 7}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 101, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 291, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 228, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        arvccons = {
            label = "Armed Response - Chief Constable",
            requiredCerts = {'ftoc'},
            requiredGrade = 9,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 229, texture = 0}, -- HAT
                    {component_id = 1, drawable = 122, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 536, texture = 8}, -- JACKET
                    {component_id = 8, drawable = 211, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 67, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 103, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 3, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 214, texture = 15}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 80, texture = 0}, -- MASK
                    {component_id = 7, drawable = 196, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 686, texture = 8}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 101, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 291, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 228, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        formpc = {
            label = "FORMALS - PPC / PC",
            requiredCerts = {},
            requiredGrade = 0,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 252, texture = 0}, -- HAT
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 553, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 204, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 248, texture = 0}, -- HAT
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 705, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 300, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 248, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        formserg = {
            label = "FORMAL - Sergent",
            requiredCerts = {},
            requiredGrade = 2,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 252, texture = 0}, -- HAT
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 553, texture = 1}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 204, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 248, texture = 0}, -- HAT
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 705, texture = 1}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 300, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 249, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        formins = {
            label = "FORMAL - Inspector",
            requiredCerts = {},
            requiredGrade = 3,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 252, texture = 0}, -- HAT
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 553, texture = 2}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 204, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 248, texture = 0}, -- HAT
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 705, texture = 2}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 300, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 250, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        formcins = {
            label = "FORMAL - Chief Inspector",
            requiredCerts = {},
            requiredGrade = 4,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 252, texture = 0}, -- HAT
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 553, texture = 3}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 204, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 248, texture = 0}, -- HAT
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 705, texture = 3}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 300, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 250, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        formsuper = {
            label = "FO(RMALS) - Superintendent",
            requiredCerts = {},
            requiredGrade = 5,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 252, texture = 0}, -- HAT
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 553, texture = 4}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 204, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 0, drawable = 248, texture = 0}, -- HAT
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 705, texture = 4}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 300, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 250, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        formcsuper = {
            label = "General Duties - Chief Superintendent",
            requiredCerts = {},
            requiredGrade = 6,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 252, texture = 0}, -- HAT
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 553, texture = 5}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 204, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 705, texture = 5}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 300, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 251, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        formaccon = {
            label = "FORMAL - Assistant Chief Constable",
            requiredCerts = {},
            requiredGrade = 7,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 252, texture = 0}, -- HAT
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 553, texture = 8}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 204, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 705, texture = 8}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 300, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        formdccon = {
            label = "FORMALS - Deputy Constable",
            requiredCerts = {},
            requiredGrade = 8,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 0, drawable = 252, texture = 0}, -- HAT
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 553, texture = 9}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 204, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 705, texture = 9}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 300, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        formccon = {
            label = "FORMALS - Chief Constable",
            requiredCerts = {},
            requiredGrade = 9,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 553, texture = 10}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 1, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 204, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 705, texture = 10}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 300, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        genppc = {
            label = "General Duties - PPC",
            requiredCerts = {},
            requiredGrade = 0,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 526, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 62, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 16, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 264, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 98, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 154, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 268, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 248, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        genpclong = {
            label = "General Duties - PC Long Sleved",
            requiredCerts = {},
            requiredGrade = 1,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 526, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 62, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 678, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 368, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 98, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 154, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 268, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 248, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        genpcshort = {
            label = "General Duties - PC Short Sleved",
            requiredCerts = {},
            requiredGrade = 1,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 525, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 62, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 677, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 368, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 98, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 138, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 269, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 248, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        genserg = {
            label = "General Duties - Sergent",
            requiredCerts = {},
            requiredGrade = 2,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 525, texture = 1}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 73, texture = 1}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 677, texture = 2}, -- JACKET
                    {component_id = 8, drawable = 368, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 109, texture = 2}, -- ARMOUR
                    {component_id = 3, drawable = 138, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 269, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 249, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        genins = {
            label = "General Duties - Inspector",
            requiredCerts = {},
            requiredGrade = 3,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 525, texture = 2}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 73, texture = 2}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 677, texture = 3}, -- JACKET
                    {component_id = 8, drawable = 368, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 109, texture = 3}, -- ARMOUR
                    {component_id = 3, drawable = 138, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 269, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 250, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        gencins = {
            label = "General Duties - Chief Inspector",
            requiredCerts = {},
            requiredGrade = 4,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 525, texture = 4}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 73, texture = 4}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 677, texture = 4}, -- JACKET
                    {component_id = 8, drawable = 368, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 109, texture = 4}, -- ARMOUR
                    {component_id = 3, drawable = 138, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 269, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 250, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        gensuper = {
            label = "General Duties - Superintendent",
            requiredCerts = {},
            requiredGrade = 5,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 525, texture = 5}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 73, texture = 5}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 677, texture = 5}, -- JACKET
                    {component_id = 8, drawable = 368, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 109, texture = 5}, -- ARMOUR
                    {component_id = 3, drawable = 138, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 269, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 250, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        gencsuper = {
            label = "General Duties - Chief Superintendent",
            requiredCerts = {},
            requiredGrade = 6,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 525, texture = 6}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 73, texture = 6}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 677, texture = 6}, -- JACKET
                    {component_id = 8, drawable = 368, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 109, texture = 6}, -- ARMOUR
                    {component_id = 3, drawable = 138, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 269, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 251, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        genaccon = {
            label = "General Duties - Assistant Chief Constable",
            requiredCerts = {},
            requiredGrade = 7,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 525, texture = 7}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 73, texture = 7}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 677, texture = 7}, -- JACKET
                    {component_id = 8, drawable = 368, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 109, texture = 7}, -- ARMOUR
                    {component_id = 3, drawable = 138, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 269, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        gendccon = {
            label = "General Duties - Deputy Constable",
            requiredCerts = {},
            requiredGrade = 8,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 525, texture = 8}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 73, texture = 8}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 677, texture = 8}, -- JACKET
                    {component_id = 8, drawable = 368, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 109, texture = 8}, -- ARMOUR
                    {component_id = 3, drawable = 138, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 269, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        genccon = {
            label = "General Duties - Chief Constable",
            requiredCerts = {},
            requiredGrade = 9,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 525, texture = 8}, -- JACKET
                    {component_id = 8, drawable = 15, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 73, texture = 8}, -- ARMOUR
                    {component_id = 3, drawable = 178, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 194, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 61, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 195, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 239, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 0, texture = 0}, -- MASK
                    {component_id = 7, drawable = 192, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 677, texture = 8}, -- JACKET
                    {component_id = 8, drawable = 368, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 109, texture = 8}, -- ARMOUR
                    {component_id = 3, drawable = 138, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 269, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 229, texture = 0}, -- SHOES
                    {component_id = 10, drawable = 240, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 252, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        },
        npasoff = {
            label = "NPAS OFFICER",
            requiredCerts = {'npas'},
            requiredGrade = false,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 552, texture = 1}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 203, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 229, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 704, texture = 1}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 299, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 233, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }

            }
        },
        npaspilot = {
            label = "NPAS PILOT",
            requiredCerts = {'npas'},
            requiredGrade = false,
            requiredJob = "police",
            male = { -- Data for male ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 552, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 216, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 0}, -- ARMOUR
                    {component_id = 3, drawable = 185, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 203, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 233, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            },
            female = { -- Data for female ped
                components = {
                    {component_id = 1, drawable = 121, texture = 0}, -- MASK
                    {component_id = 7, drawable = 0, texture = 0}, -- SCARF CHAIN
                    {component_id = 11, drawable = 704, texture = 0}, -- JACKET
                    {component_id = 8, drawable = 302, texture = 0}, -- TSHIRT
                    {component_id = 9, drawable = 0, texture = 8}, -- ARMOUR
                    {component_id = 3, drawable = 3, texture = 0}, -- HANDS
                    {component_id = 4, drawable = 299, texture = 0}, -- LEGS
                    {component_id = 6, drawable = 146, texture = 0}, -- SHOES
                    {component_id = 10, drawable = -1, texture = 0} -- DECALS
                },
                props = {
                    {prop_id = 0, drawable = 233, texture = 0}, -- This is an example hat
                    {prop_id = 1, drawable = -1, texture = 0} -- This is an example pair of glasses
                }
            }
        }

    }
} 
