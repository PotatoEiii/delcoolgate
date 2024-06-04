local players = game.Players:GetPlayers()
for i = 1,#players do
local x = tostring(players[i])
local v = string.sub(x,1,5)
local b = string.lower(v)
print(b)
end
