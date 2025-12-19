local Venyx = VenyxLib.new("Game GUI")

local home = Venyx:addPage("Home", VenyxLib.icons.home)
local main = home:addSection("Main Features")

main:addToggle("God Mode", false, function(state)
    if state then
        Venyx:Notification("Enabled", "God Mode activated", "Success")
    else
        Venyx:Notification("Disabled", "God Mode deactivated", "Warning")
    end
end)

main:addSlider("Walk Speed", 16, 200, 16, function(speed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

main:addButton("Teleport to Base", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100, 0)
    Venyx:Notification("Teleport", "Teleported to base!", "Primary")
end)
