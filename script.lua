for i, v in pairs(game.Players:GetChildren()) do
    for i, v in pairs(v.Backpack:GetChildren()) do
        
        local clone = v:clone()
        clone.Parent = game.Players.LocalPlayer.Backpack
    end
end
