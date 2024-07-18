getgenv().fishing = true
spawn(function()
while wait(0.3) do
pcall(function()
if getgenv().fishing and not game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
repeat task.wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if string.find(v.Name, "Rod") then
v.Parent = game.Players.LocalPlayer.Character
end
end
until not getgenv().fishing or game.Players.LocalPlayer.Backpack:FindFirstChild("Compass")
end
end)
end
end)

spawn(function()
while wait(0.3) do
pcall(function()
if getgenv().fishing and not game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
repeat task.wait()
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["fishingplace"].CFrame * CFrame.new(0, 3, 0)
wait(0.1)

for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if string.find(v.Name, "Rod") then
for _, x in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if string.find(x.Name, "Rod") then
for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v:FindFirstChild("Bobber") then
if v.Bobber.Effect.Enabled == true then
wait(0.1)

local args = {
[1] = Vector3.new(20837,-3017,-4390)
}
game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
end
elseif v.Name == "Cast" and not v:FindFirstChild("Bobber") then
wait(0.6)
local args = {
[1] = Vector3.new(20837,-3017,-4390)
}
game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
wait()
workspace:WaitForChild("Merchants"):WaitForChild("FishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
end
end
end
end
end
until not getgenv().fishing or game.Players.LocalPlayer.Backpack:FindFirstChild("Compass")
end
      end)
   end
end)
