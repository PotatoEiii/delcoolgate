spawn(function()
       while wait() do
              pcall(function()
if _G.Hitboxplr then
                                          
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
v.Character.HumanoidRootPart.Size = Vector3.new(fathitbox, fathitbox, fathitbox)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.Color = Color3.fromRGB(0, 255, 127)
end
end
                                          
else
                                          
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
v.Character.HumanoidRootPart.Transparency = 1
v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
end
end
                                          
end
              end)
       end
end)
