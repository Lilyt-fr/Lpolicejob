Config                            = {}
Config.DrawDistance               = 25.0
Config.Type = 21
Config.Locale = 'fr'

Config.WebHookPlainte = "https://discordapp.com/api/webhooks/1067824146580516894/574Zz0YedbydQJGjdW9nIV--z76Z3yjcNJh4ck_s8RykDGLxYpc-d9G_V79fxcbly213" 
Config.Logs_Fouille = "https://discord.com/api/webhooks/855123504865476689/q0quAwu253iuxjDsioMrbFtcg7SdIWnEGSQdxRjl7Sb8DusRc7FBgPlPnWv8CHZgwncd"
Config.Logs_Objets_depot = "https://discord.com/api/webhooks/996468973749161995/0lqBgiEHXkjf4gam1xvuTiIARVm6ojzYBhQrxzBZJLZ_vsO9YHTT4jJNGgNf64sahYLi"
Config.Logs_Objets_retrait = "https://discord.com/api/webhooks/996468973749161995/0lqBgiEHXkjf4gam1xvuTiIARVm6ojzYBhQrxzBZJLZ_vsO9YHTT4jJNGgNf64sahYLi"
Config.Logs_Armes_depot = "https://discord.com/api/webhooks/996469144042098718/cinM5ma9Vp2DBtZ0nOLQbEec8s47prXkG4iIbZTAj2jTjIGK9OnuQvDYFm6O8DDO3kgS"
Config.Logs_Armes_retrait = "https://discord.com/api/webhooks/996469144042098718/cinM5ma9Vp2DBtZ0nOLQbEec8s47prXkG4iIbZTAj2jTjIGK9OnuQvDYFm6O8DDO3kgS"
Config.Logs_PriseFin_Service = "https://discord.com/api/webhooks/996468814348816465/P-oaCAHKzi0Wr9-LOCdT64AZOtgApmFcnPPitCjTsLZTfwyFy_8PJotOtaOVAcAng-xx"
Config.Logs_Amende = "https://discord.com/api/webhooks/996469309108912268/8BXqsmI6b9xswG6TOcYK1GSAXAQ80O0hvp2lMpNoRroEbblrQv6RkLVzkoBRzW5mv0Mh"

------------------
Config.Grade_Pour_Radar = 2  -- Accès Menu radar 
Config.Grade_Pour_Objets = 2  -- Accès Menu objets 
Config.Grade_Pour_Chien = 2 -- Accès Menu chien 
Config.Grade_Pour_Camera = 2 -- Accès Menu caméra 
Config.Grade_Pour_AvisRecherche = 1 -- Accès Menu adr 
--------------------
Config.Grade_Pour_PPA = 7 -- retirer/donner ppa
Config.Grade_Pour_Permis = 7 -- retirer/donner permis
------------------

Config.pos = {
    blip = {
        position = {x = 819.35, y = -1290.37, z = 26.30}
    },
	garagevoiture = {
        position = {x = 846.68, y = -1319.39, z = 26.41, h = 267.97}
    },
	garagevoiture2 = {
        position = {x = 458.52, y = -1024.63, z = 28.37, h = 80.13}
    },
	garageheli = {
        position = {x = 459.02, y = -979.28, z = 43.69, h = 182.69} -- 
    },
    garagebateau = {
        position = {x = -776.70, y = -1513.18, z = 0.16, h = 19.23} --
    },
	armurerie = {
        position = {x = 836.50, y = -1288.50, z = 28.24, h = 310.50}
    },
	vestiaire = {
        position = {x = 852.57, y = -1313.47, z = 28.24}
    },
	vestiaire2 = {
        position = {x = 451.2, y = -992.6, z = 30.69}
    },
    coffre = {
        position = {x = 850.69, y = -1313.03, z = 28.24}
    },
    boss = {
        position = {x = 856.71, y = -1299.95, z = 28.26}
    },
    plainterdv = {
        position = {x = 827.30, y = -1292.81, z = 28.23, h = 49.66}
    },
    casierjudiciaire = {
        position = {x = 853.59, y = -1292.76, z = 28.24}
    }
}

Config.spawn = {
	spawnvoiture = {position = {x = 848.15, y = -1327.16, z = 26.18, h = 56.38}},
    spawnvoiture2 = {position = {x = 453.5, y = -1020.23, z = 27.99, h = 93.62}},
	spawnheli = {position = {x = 449.09, y = -981.33, z = 43.69, h = 276.00}},
    spawnbato = {position = {x = -787.68, y = -1511.83, z = 0.00, h = 109.49}}
}

Config.armurerie = {
	{nom = "Famas", arme = "weapon_bullpuprifle_mk2", minimum_grade = 1},
	{nom = "Pistolet de detresse", arme = "weapon_flaregun", minimum_grade = 2},
	{nom = "Fusil à pompe", arme = "weapon_pumpshotgun_mk2", minimum_grade = 3},
	{nom = "Fusil à pompe 2", arme = "weapon_combatshotgun", minimum_grade = 4},
	{nom = "M4", arme = "weapon_carbinerifle_mk2", minimum_grade = 5},
	{nom = "M16", arme = "weapon_specialcarbine_mk2", minimum_grade = 6},
	{nom = "Brigitte", arme = "weapon_heavysniper", minimum_grade = 7}
}

Config.amountAmmo = 500

police = {
    clothes = {
        specials = {
            [0] = {
                label = "Reprendre sa tenue civil",
                minimum_grade = 0, -- grade minmum pour prendre la tenue
                variations = {male = {}, female = {}},
                onEquip = function()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                        TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                    SetPedArmour(PlayerPedId(), 0)
                end
            },

            
            [1] = {
                label = "Tenue Police",
                minimum_grade = 0, -- grade minmum pour prendre la tenue
                variations = {
                    male = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 44, ['tshirt_2'] = 0,
                        ['torso_1'] = 55, ['torso_2'] = 0,
                        ['arms'] = 0,
                        ['pants_1'] = 130, ['pants_2'] = 0,
                        ['shoes_1'] =25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 1,
                        ['chain_1'] = 8,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    },
                    female = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 52,['tshirt_2'] = 0,
                        ['torso_1'] = 48, ['torso_2'] = 0,
                        ['arms'] = 14, ['arms_2'] = 0,
                        ['pants_1'] = 136, ['pants_2'] = 0,
                        ['shoes_1'] = 25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 14,
                        ['chain_1'] = 8,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    }
                },
                onEquip = function()  
                end
            },
            --[[[2] = {
                label = "Tenue Gradé",
                minimum_grade = 2, -- grade minmum pour prendre la tenue
                variations = {
                    male = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 44, ['tshirt_2'] = 0,
                        ['torso_1'] = 55, ['torso_2'] = 0,
                        ['arms'] = 0,
                        ['pants_1'] = 130, ['pants_2'] = 0,
                        ['shoes_1'] =25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 1,
                        ['chain_1'] = 8,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    },
                    female = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 15 ,['tshirt_2'] = 2,
                        ['torso_1'] = 65, ['torso_2'] = 2,
                        ['arms'] = 36, ['arms_2'] = 0,
                        ['pants_1'] = 38, ['pants_2'] = 2,
                        ['shoes_1'] = 12, ['shoes_2'] = 6,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    }
                },
                onEquip = function()  
                end
            },
            [3] = {
                label = "Tenue Sergent",
                minimum_grade = 2, -- grade minmum pour prendre la tenue
                variations = {
                    male = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 39, ['tshirt_2'] = 0,
                        ['torso_1'] = 55, ['torso_2'] = 0,
                        ['arms'] = 30,
                        ['pants_1'] = 46, ['pants_2'] = 0,
                        ['shoes_1'] =25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    },
                    female = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 15,['tshirt_2'] = 2,
                        ['torso_1'] = 65, ['torso_2'] = 2,
                        ['arms'] = 36, ['arms_2'] = 0,
                        ['pants_1'] = 38, ['pants_2'] = 2,
                        ['shoes_1'] = 12, ['shoes_2'] = 6,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    }
                },
                onEquip = function()  
                end
            },
            [4] = {
                label = "Tenue Lieutenant",
                minimum_grade = 3, -- grade minmum pour prendre la tenue
                variations = {
                    male = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 39, ['tshirt_2'] = 0,
                        ['torso_1'] = 55, ['torso_2'] = 0,
                        ['arms'] = 30,
                        ['pants_1'] = 46, ['pants_2'] = 0,
                        ['shoes_1'] =25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    },
                    female = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 15,['tshirt_2'] = 2,
                        ['torso_1'] = 65, ['torso_2'] = 2,
                        ['arms'] = 36, ['arms_2'] = 0,
                        ['pants_1'] = 38, ['pants_2'] = 2,
                        ['shoes_1'] = 12, ['shoes_2'] = 6,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    }
                },
                onEquip = function()  
                end
            },
            [5] = {
                label = "Tenue Directeur",
                minimum_grade = 4, -- grade minmum pour prendre la tenue
                variations = {
                    male = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 39, ['tshirt_2'] = 0,
                        ['torso_1'] = 55, ['torso_2'] = 0,
                        ['arms'] = 30,
                        ['pants_1'] = 46, ['pants_2'] = 0,
                        ['shoes_1'] =25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    },
                    female = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 15,['tshirt_2'] = 2,
                        ['torso_1'] = 65, ['torso_2'] = 2,
                        ['arms'] = 36, ['arms_2'] = 0,
                        ['pants_1'] = 38, ['pants_2'] = 2,
                        ['shoes_1'] = 12, ['shoes_2'] = 6,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    }
                },
                onEquip = function()  
                end
            }]]--
        },
        grades = {
            [0] = {
                label = "Mettre",
                minimum_grade = 0, -- grade minmum pour prendre la tenue
                variations = {
                male = {
                    ['bproof_1'] = 7, ['bproof_2'] = 0,
                },
                female = {
                    ['bproof_1'] = 7, ['bproof_2'] = 0,
                }
            },
            onEquip = function()
            end
        },
		[1] = {
			label = "Enlever",
			minimum_grade = 0, -- grade minmum pour prendre la tenue
			variations = {
			male = {
				['bproof_1'] = 0,
			},
			female = {
				['bproof_1'] = 0,
			}
		},
		onEquip = function()
		end
	},
    }
},
	vehicles = {                                                         -- category = Separator en rageui 
        car = {                                                           -- Label = nom ig qui apparaitra sur le bouton 
            {category = "↓ ~b~Véhicules ~s~↓"},                           -- Model = nom de spawn du véhicule
            {model = "police", label = "Vehicule Cadet", minimum_grade = 0, stock = 10}, --minimum_grade = grade minmum pour prendre
			{model = "police2", label = "Vehicule Officier", minimum_grade = 1, stock = 10},
            {model = "police3", label = "Vehicule Sergeant", minimum_grade = 2, stock = 10},
            --{model = "sheriff", label = "Vehicule Formateur", minimum_grade = 3, stock = 10},
            --{model = "sheriff", label = "Vehicule Sergeant Chef", minimum_grade = 4, stock = 10},
            --{model = "sheriff", label = "Vehicule Lieutenant", minimum_grade = 5, stock = 10},
            --{model = "sheriff", label = "Vehicule Capitaine", minimum_grade = 6, stock = 10},
            --{model = "sheriff", label = "Vehicule Commandant", minimum_grade = 7, stock = 3},
            {category = "↓ ~b~Rangement ~s~↓"},
        },
    }
}