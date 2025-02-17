local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))() -- главное
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
--Названия

local Window = Fluent:CreateWindow({
    Title = "Micsic " .. Fluent.Version,
    SubTitle = "ScriptsWorld ",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Light",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
	Misc = Window:AddTab({ Title = "GamePass", Icon = "book" }),
	Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
}

Tabs.Main:AddParagraph({
        Title = "Auto",
        Content = "Auto.\nLife!"
    })

Tabs.Main:AddButton({
        Title = "AutoRoll On",
        Description = "AutoRoll ;)",
        Callback = function()
            Window:Dialog({
                Title = "AutoRoll",
                Content = "AutoRoll Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.Setting.AutoRoll.Value = 1
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

	Tabs.Main:AddButton({
        Title = "AutoRoll Off",
        Description = "AutoRoll ;)",
        Callback = function()
            Window:Dialog({
                Title = "AutoRoll",
                Content = "AutoRoll Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.Setting.AutoRoll.Value = 0
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddParagraph({
        Title = "Fast",
        Content = "Fast.\nLife!"
    })

Tabs.Main:AddButton({
        Title = "FastRoll On",
        Description = "FastRoll ;)",
        Callback = function()
            Window:Dialog({
                Title = "FastRoll",
                Content = "FastRoll Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.Setting.FastRoll.Value = 2
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

	Tabs.Main:AddButton({
        Title = "FastRoll Off",
        Description = "FastRoll ;)",
        Callback = function()
            Window:Dialog({
                Title = "FastRoll",
                Content = "FastRoll Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.Setting.FastRoll.Value = 0
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

Tabs.Misc:AddParagraph({
        Title = "Free GamePass",
        Content = "GamePass\nCool Scripts"
    })

	Tabs.Misc:AddButton({
        Title = "Lucky x2 On",
        Description = "Lucky x2 ;)",
        Callback = function()
            Window:Dialog({
                Title = "Lucky x2",
                Content = "Lucky x2 Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.Global_Lucky.Value = 1
							game.Players.LocalPlayer.GamePass.BaseBagSize.Value = 1
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

	Tabs.Misc:AddButton({
        Title = "Lucky x2 Off",
        Description = "Lucky x2 ;)",
        Callback = function()
            Window:Dialog({
                Title = "Lucky x2",
                Content = "Lucky x2 Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.Global_Lucky.Value = 0
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

	Tabs.Misc:AddParagraph({
        Title = "Vip GamePass",
        Content = "Vip\nCool Scripts"
    })

	Tabs.Misc:AddButton({
        Title = "Vip On",
        Description = "Vip ;)",
        Callback = function()
            Window:Dialog({
                Title = "Vip",
                Content = "Vip Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.Vip.Value = 1
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

	Tabs.Misc:AddButton({
        Title = "Vip Off",
        Description = "Vip ;)",
        Callback = function()
            Window:Dialog({
                Title = "Vip",
                Content = "Vip Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.Vip.Value = 0
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })


		Tabs.Misc:AddParagraph({
        Title = "UniverseLukcy GamePass",
        Content = "UniverseLukcy\nCool Scripts"
    })

	Tabs.Misc:AddButton({
        Title = "UniverseLukcy On",
        Description = "UniverseLukcy ;)",
        Callback = function()
            Window:Dialog({
                Title = "UniverseLukcy",
                Content = "UniverseLukcy Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.UniverseLukcy.Value = 1
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

	Tabs.Misc:AddButton({
        Title = "UniverseLukcy Off",
        Description = "HatchLuck ;)",
        Callback = function()
            Window:Dialog({
                Title = "UniverseLukcy",
                Content = "UniverseLukcy Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.UniverseLukcy.Value = 0
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

		Tabs.Misc:AddParagraph({
        Title = "HatchLuck GamePass",
        Content = "HatchLuck\nCool Scripts"
    })

	Tabs.Misc:AddButton({
        Title = "HatchLuck On",
        Description = "HatchLuck ;)",
        Callback = function()
            Window:Dialog({
                Title = "HatchLuck",
                Content = "HatchLuck Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.HatchLuck.Value = 1
							game.Players.LocalPlayer.GamePass.HeroBagSize.Value = 1
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

	Tabs.Misc:AddButton({
        Title = "HatchLuck Off",
        Description = "HatchLuck ;)",
        Callback = function()
            Window:Dialog({
                Title = "HatchLuck",
                Content = "HatchLuck Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.HatchLuck.Value = 0
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

		Tabs.Misc:AddParagraph({
        Title = "HatchLuck GamePass",
        Content = "HatchLuck\nCool Scripts"
    })

	Tabs.Misc:AddButton({
        Title = "HatchLuck On",
        Description = "HatchLuck ;)",
        Callback = function()
            Window:Dialog({
                Title = "HatchLuck",
                Content = "HatchLuck Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.HatchLuck.Value = 1
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

	Tabs.Misc:AddButton({
        Title = "HatchLuck Off",
        Description = "HatchLuck ;)",
        Callback = function()
            Window:Dialog({
                Title = "HatchLuck",
                Content = "HatchLuck Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.HatchLuck.Value = 0
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

		Tabs.Misc:AddParagraph({
        Title = "Fast-Hatch GamePass",
        Content = "Fast-Hatch\nCool Scripts"
    })

	Tabs.Misc:AddButton({
        Title = "Fast-Hatch On",
        Description = "Fast-Hatch ;)",
        Callback = function()
            Window:Dialog({
                Title = "Fast-Hatch",
                Content = "Fast-Hatch Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.HatchLuck.Value = 1
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

	Tabs.Misc:AddButton({
        Title = "Fast-Hatch Off",
        Description = "Fast-Hatch ;)",
        Callback = function()
            Window:Dialog({
                Title = "Fast-Hatch",
                Content = "Fast-Hatch Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.HatchLuck.Value = 0
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

		Tabs.Misc:AddParagraph({
        Title = "Double-Hatch GamePass",
        Content = "Double-Hatch\nCool Scripts"
    })

	Tabs.Misc:AddButton({
        Title = "Double-Hatch On",
        Description = "Double-Hatch ;)",
        Callback = function()
            Window:Dialog({
                Title = "Double-Hatch",
                Content = "Double-Hatch Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.Double-Hatch.Value = 1
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })

	Tabs.Misc:AddButton({
        Title = "Double-Hatch Off",
        Description = "Double-Hatch ;)",
        Callback = function()
            Window:Dialog({
                Title = "Double-Hatch",
                Content = "Double-Hatch Super",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.Double-Hatch.Value = 0
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("OK")
                        end
                    }
                }
            })
        end
    })
	-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
