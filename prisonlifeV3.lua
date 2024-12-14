local library = loadfile("aztuplib.lua")(); -- load the library
local Players = game:GetService("Players") -- get the players service
local LocalPlayer = Players.LocalPlayer -- get the local player
local character = LocalPlayer.character -- get the local player's character
local currentPivot = character:GetPivot() -- get the pivot (position) of the character
local selectedWeapon = "" -- create a variable to store the selected weapon

if game.PlaceId == 110392240864059 then -- check if the place id is the same as the prison life v3 place id
    local WeaponsSection = library:CreateSection("Weapons") -- create a section called weapons

    local selectWeapon = WeaponsSection:Dropdown("Teleport To Weapon", {"Remington 870", "AK-47"}, function(selected)
        local selectedWeapon = selected
    end);

    local TeleportToWeapon = WeaponsSection:Button("Teleport To Weapon", function()
        character:PivotTo(workspace.Prison_ITEMS.giver:FindFirstChild(selectedWeapon):GetPivot())
    end)
end

library:Ready();