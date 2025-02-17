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
        Title = "Give All GamePass",
        Description = "GamePass ;)",
        Callback = function()
            Window:Dialog({
                Title = "GamePass",
                Content = "Give All GamePass",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.Global_Lucky.Value = 1
							game.Players.LocalPlayer.GamePass.Vip.Value = 1
							game.Players.LocalPlayer.GamePass.UniverseLukcy.Value = 1
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
        Title = "Give All off GamePass",
        Description = "GamePass ;)",
        Callback = function()
            Window:Dialog({
                Title = "GamePass",
                Content = "Give All off GamePass",
                Buttons = {
                    {
                        Title = "On",
                        Callback = function()
                            game.Players.LocalPlayer.GamePass.Global_Lucky.Value = 0
							game.Players.LocalPlayer.GamePass.Vip.Value = 0
							game.Players.LocalPlayer.GamePass.UniverseLukcy.Value = 0
							game.Players.LocalPlayer.GamePass.HatchLuck.Value = 0
							game.Players.LocalPlayer.GamePass.HeroBagSize.Value = 0
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
