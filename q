for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if string.find(v.Name, "Juice") or string.find(v.Name, "Milk") or string.find(v.Name, "Cider") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Smoothie") or string.find(v.Name, "Golden") then
v.Parent = game.Players.LocalPlayer.Character
end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if string.find(v.Name, "Juice") or string.find(v.Name, "Milk") or string.find(v.Name, "Cider") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Smoothie") or string.find(v.Name, "Golden") then
v:Activate()
v:Destroy()
end
end
