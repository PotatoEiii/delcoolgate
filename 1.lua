repeat wait() until game:IsLoaded()
  if game.placeId == 8569358381 or game.placeId == 3237168 then
game:GetService("Players").LocalPlayer.PlayerGui.Menu.Frame.C.Frame.Nametag.TextColor3 = Color3.new(255,0,0)
game:GetService("Players").LocalPlayer.PlayerGui.Menu.Frame.C.Frame.Nametag.Text = "Saluna"
game:GetService("Players").LocalPlayer.PlayerGui.Menu.Frame.C.Frame.Header.Text = "PROTECTED BY:"
local Pedo = {
    1135910299, -- Havelic
    520944, -- Oblivic
    43247021, -- BowTiedPony
    2350183594, -- icydragonwingsis
    835620275, -- Silvers_Rayleig
    137621, -- mariobros38
    295337577 -- ModeratorDaMarcuses
}

for _, v in pairs(game:GetService("Players"):GetPlayers()) do
    for _, v1 in pairs(Pedo) do
        if v.UserId == v1 then
            game:GetService("Players").LocalPlayer:Kick("Admin is in the server")
        end
    end
end

game:GetService("Players").PlayerAdded:Connect(function(r)
    for _, v in pairs(Pedo) do
        if r.UserId == v then
            game:GetService("Players").LocalPlayer:Kick("Admin or Staff has joined the server")
        end
    end
end)  

local listed = loadstring(game:HttpGet('https://raw.githubusercontent.com/AdamFatherOfCreator/NOTFUN/main/whitelist'))()
_G.WhiteListed = false
        for _, v1 in pairs(listed) do
local gethwid = game:GetService("RbxAnalyticsService"):GetClientId()
            if gethwid == v1 then
_G.WhiteListed = true
            end
        end
if _G.WhiteListed then 
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
       vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)


local Players = game:GetService("Players")
    local cache = {}
    function lol(name)
        if cache[name] then return cache[name] end
        local player = Players:FindFirstChild(name)
        if player then
            cache[name] = player.UserId
            return player.UserId
        end 
    
        local id
        pcall(function ()
            id = Players:lol(name)
        end)
        cache[name] = id
        return id
    end
    local ehh = game.Players.LocalPlayer.Name
    local Final = lol(ehh)
    getgenv().firstfruit = game.Workspace.UserData["User_"..Final].Data["DevilFruit"].Value
    getgenv().secondfruit = game.Workspace.UserData["User_"..Final].Data["DevilFruit2"].Value

   do  
    local fishingplace =  game:GetService("Workspace"):FindFirstChild("fishingplace")  
    if fishingplace then 
    fishingplace:Destroy() 
    end 
    end
    local fishingplace = Instance.new("Part",game.Workspace)
    fishingplace.Name = "fishingplace"
    fishingplace.Size = Vector3.new(2,1,2)
    fishingplace.Position = Vector3.new(19784, 210,5000)
    fishingplace.Anchored = true
    
    do  
    local safezonedestroyspace =  game:GetService("Workspace"):FindFirstChild("SafeZoneOuterSpacePart")  
    if safezonedestroyspace then 
    safezonedestroyspace:Destroy() 
    end 
    end
        if game.CoreGui:FindFirstChild("BBB") then
            game.CoreGui:FindFirstChild("BBB"):Destroy()
        end
    local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-100000, 100000)), 10000, (math.random(-100000, 100000)))
    SafeZoneOuterSpace.Anchored = true
local mta = getrawmetatable(game)
local namecall = mta.__namecall
local setreadonly = setreadonly or make_writable


setreadonly(mta, false)

mta.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local arguments = args
    local a = {}
    for i = 1, #arguments - 1 do
        a[i] = arguments[i]
    end
    local method = getnamecallmethod() 

    if method == 'FireServer' or method == "InvokeServer" then
        if self.Name == 'Drown' and _G.nowaterdamage then
            if args[1] then
                return nil
            end
        end
    end
    
    return namecall(self, ...)    
end)

local attackremote = {}    

local a
a=hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
            attackremote[self.Name] = args[1]
            return a(self,unpack(args))
        elseif self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            attackremote[self.Name] = ""
        end
    end
      return a(self,...)
end)

aaxc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RemoteEvent" and args[3] == "StopCharging" and _G.auto100rate then
            args[6] = 100
            return aaxc(self, unpack(args))
        end
    end
    return aaxc(self, ...)
end)

local remotes = {}
    local azc
    azc=hookmetamethod(game,"__namecall",function(self,...)
        local args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" or method == "InvokeServer" then
            if self.Name == "RemoteEvent" and args[3] == "StopCharging" or args[3] == "Create" then
                remotes[self.Name] = args[1]
                return azc(self,unpack(args))
            end
        end
          return azc(self,...)
    end)
    
    function serializeTable(val, name, skipnewlines, depth)
    skipnewlines = skipnewlines or false
    depth = depth or 0
 
    local tmp = string.rep("", depth)
 
    if name then tmp = tmp end
 
    if type(val) == "table" then
        tmp = tmp .. (not skipnewlines and "" or "")
 
        for k, v in pairs(val) do
            tmp =  tmp .. serializeTable(v, k, skipnewlines, depth + 1) .. (not skipnewlines and "" or "")
        end
 
        tmp = tmp .. string.rep("", depth) 
    elseif type(val) == "number" then
        tmp = tmp .. tostring(val)
    elseif type(val) == "string" then
        tmp = tmp .. string.format("%q", val)
    elseif type(val) == "boolean" then
        tmp = tmp .. (val and "true" or "false")
    elseif type(val) == "function" then
        tmp = tmp  .. "func: " .. debug.getinfo(val).name
    else
        tmp = tmp .. tostring(val)
    end
 
    return tmp
 end

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/AdamFatherOfCreator/UI123/main/Fluent"))()
local Window = Fluent:CreateWindow({
    Title = "SALUNA HUB (H32)",
    SubTitle = "Made by Saluna",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})
--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Info = Window:AddTab({ Title = "About", Icon = "rbxassetid://4871684504" }),
    Main = Window:AddTab({ Title = "Stats", Icon = "rbxassetid://8587689304" }),
    Haki = Window:AddTab({ Title = "Haki", Icon = "rbxassetid://6523858394" }),
    Weapon = Window:AddTab({ Title = "Weapon", Icon = "rbxassetid://7485051715" }),
    Farm = Window:AddTab({ Title = "Farming", Icon = "rbxassetid://16397066979" }),
    Fruit = Window:AddTab({ Title = "Fruit & Compass", Icon = "rbxassetid://13492316250" }),
    Affinity = Window:AddTab({ Title = "Affinity", Icon = "rbxassetid://13321880274" }),
    Gems = Window:AddTab({ Title = "Gems (Coming Soon)", Icon = "rbxassetid://6788518051" }),
    PVP =  Window:AddTab({ Title = "PVP", Icon = "rbxassetid://2294529381" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "rbxassetid://6723742952" }),
    Player = Window:AddTab({ Title = "Player", Icon = "rbxassetid://16149111731" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "rbxassetid://11385419674" }),
    Automatic = Window:AddTab({ Title = "Automatic", Icon = "rbxassetid://11860859170" }),
    Server = Window:AddTab({ Title = "Server", Icon = "rbxassetid://7539983773" }),
    Webhook = Window:AddTab({ Title = "Webhook", Icon = "rbxassetid://14769727847" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "rbxassetid://16181364687" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    nonef = Window:AddTab({ Title = "-------", Icon = "" }),
    nonet = Window:AddTab({ Title = "-------", Icon = "" })
}
local Options = Fluent.Options

local info1 = Tabs.Info:AddSection("Developer/Owner")
Tabs.Info:AddParagraph({
Title = "Saluna Hub",
Content = "This script is belong to Saluna. \nFacebook: IrenkissWantPeace \nDiscord: AZ-BrAg#6921 \nWe hope you will have a nice experience by using this script!"
})

local info2 = Tabs.Info:AddSection("Information")
local plr = game.Players.LocalPlayer.Character.Name
local plrid = tostring(game.Players.LocalPlayer.UserId)
Tabs.Info:AddParagraph({
Title = "User Information",
Content = "User Name: "..plr .."\nUser ID: "..plrid .."\nCombo: " ..getgenv().firstfruit .." & "..getgenv().secondfruit
})

local Asset = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
Tabs.Info:AddParagraph({
Title = "Server Information",
Content = "Place Name: " ..Asset.Name .."\nPlace ID: " ..game.PlaceId .."\nMax Players: "..game.Players.MaxPlayers
})

local info3 = Tabs.Info:AddSection("Discord")
Tabs.Info:AddParagraph({
Title = "Discord Information",
Content = "Discord Invite Link: https://discord.gg/ecpbhm8G3w"
})

Tabs.Info:AddButton({
        Title = "Discord Saluna Hub",
        Description = "Copy Discord Invite Link",
        Callback = function()
everyClipboard = toclipboard
function toClipboard(txt)
    if everyClipboard then
        everyClipboard(tostring(txt))
    end
end
toClipboard("https://discord.gg/ecpbhm8G3w")    
end
    })

local gems1 = Tabs.Gems:AddSection("Dupe Gems (At Risk)")
Tabs.Gems:AddParagraph({
Title = "Warning When Dupe Gems: ",
Content = [[Operation:
When you got a bound slot in first page (1st to 12nd), 
You will get refund 3k gems per 1 bound slot.
When you reset stats, The refund function will reset too.
Thus, when you reset stats and rejoin, you will get refund again.
]]
})

local duping = Tabs.Gems:AddToggle("dupingtoggle", {Title = "Auto Dupe Gems (Save & Autoload Config)", Default = false })
duping:OnChanged(function()
if Options.dupingtoggle.Value == true then
_G.dupegem = true
else
_G.dupegem = false
_G.startdupe = false
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.dupegem then
pcall(function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
if game.Workspace.UserData["User_"..plrid].Data.BoundUnlock1.Value == true or
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock2.Value == true or
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock3.Value == true or
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock4.Value == true or
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock5.Value == true or 
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock6.Value == true or 
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock7.Value == true or
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock8.Value == true or
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock9.Value == true or
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock10.Value == true or
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock11.Value == true or
game.Workspace.UserData["User_"..plrid].Data.BoundUnlock12.Value == true then
_G.startdupe = true
else
Fluent:Notify({
    Title = "Dupe Gems Notify",
    Content = "You don't have any 1st-page bound slot",
    Duration = 3
})
end
end)
end
end)
end
end)






spawn(function()
while wait() do
pcall(function()
if _G.startdupe then
pcall(function()
task.wait(7)
local plr = game.Players.LocalPlayer
repeat task.wait()
until plr.PlayerGui.Load.Frame.Visible
if plr.PlayerGui.Load.Frame.Visible == true then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
       v:Fire()
   end
end
wait(2)
if plr.PlayerGui.Load.Frame.Visible == true then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
       v:Fire()
   end
end
wait(2)
if plr.PlayerGui.Load.Frame.Visible == true then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
       v:Fire()
   end
end
repeat task.wait()
until game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < 211000
wait(7)
workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("Stats"):FireServer()
wait(5)

game.Players.LocalPlayer:Kick("Hoping Server For Duping. Please wait...")
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
TeleportService = game:GetService("TeleportService")
HttpService = game:GetService("HttpService")
PlaceId, JobId = game.PlaceId, game.JobId
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
	if httprequest then
		httprequest({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = HttpService:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = HttpService:GenerateGUID(false),
				args = {code = 'dYHag43eeU'}
			})
		})
	end   
 if httprequest then
        local servers = {}
        local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", PlaceId)})
        local body = HttpService:JSONDecode(req.Body)

        if body and body.data then
            for i, v in next, body.data do
                if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
                    table.insert(servers, 1, v.id)
                end
            end
        end

        if #servers > 0 then
            TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
        else
            return notify("Serverhop", "Couldn't find a server.")
        end
    else
        notify("Incompatible Exploit", "Your exploit does not support this command (missing request)")
    end          
end)
end
end)
end
end)

local gems2 = Tabs.Gems:AddSection("Exchange Gems To Beries (At Risk)")
Tabs.Gems:AddParagraph({
Title = "Warning When Exchange: ",
Content = "Operation: Fast Reroll And Claim Challenge12 \n(500 Gems = 100.000 Beries) \nBe careful with your affinities!"
})

local wqettt = Tabs.Gems:AddDropdown("Dropdown", {
        Title = "Select Fruit To Fast Roll Affinity",
        Values = {"DFT1", "DFT2"},
        Multi = false,
        Default = "",
    })

    wqettt:OnChanged(function(koedpwqbb)
_G.fruitexchange = koedpwqbb
end)

local exchangett = Tabs.Gems:AddToggle("exchangetttoggle", {Title = "Auto Exchange", Default = false })
exchangett:OnChanged(function()
if Options.exchangetttoggle.Value == true then
_G.exchangegem = true
else
_G.exchangegem = false
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.exchangegem then
pcall(function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)

workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge12")

repeat wait() 
until game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_12"].Claim.AutoButtonColor == false
wait()

for i = 1,50 do
local args = {
    [1] = _G.fruitexchange,
    [2] = false,
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = "Gems"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
end

repeat wait() 
until game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_12"].Claim.AutoButtonColor == true

wait()

end)
end
end)
end
end)



local Miscc2 = Tabs.Misc:AddSection("Hide/Show UI Position")
local tytytytytt = Tabs.Misc:AddSlider("Slider", {
    Title = "UI Position X",
    Description = "Change this for adjusting X Position",
    Default = 5,
    Min = 1,
    Max = 999,
    Rounding = 0,
    Callback = function(toggle1)
if toggle1 < 10 then
toqw = tostring(toggle1)
ttt1 = "0.00"..toqw
togglepositionX = tonumber(ttt1)
elseif toggle1 >= 10 and toggle1 < 100 then
toqw = tostring(toggle1)
ttt1 = "0.0"..toqw
togglepositionX = tonumber(ttt1)
elseif toggle1 >= 100 and toggle1 < 1000 then
toqw = tostring(toggle1)
ttt1 = "0."..toqw
togglepositionX = tonumber(ttt1)
end
game.CoreGui.BBB.hideUI.Position = UDim2.new(togglepositionX, 1, togglepositionY, 1)
        end
    })

local tytytytytt2 = Tabs.Misc:AddSlider("Slider", {
    Title = "UI Position Y",
    Description = "Change this for adjusting X Position",
    Default = 155,
    Min = 1,
    Max = 999,
    Rounding = 0,
    Callback = function(toggle2)
if toggle2 < 10 then
toqw2 = tostring(toggle2)
ttt2 = "0.00"..toqw2
togglepositionY = tonumber(ttt2)
elseif toggle2 >= 10 and toggle2 < 100 then
toqw2 = tostring(toggle2)
ttt2 = "0.0"..toqw2
togglepositionY = tonumber(ttt2)
elseif toggle2 >= 100 and toggle2 < 1000 then
toqw2 = tostring(toggle2)
ttt2 = "0."..toqw2
togglepositionY = tonumber(ttt2)
end
game.CoreGui.BBB.hideUI.Position = UDim2.new(togglepositionX, 1, togglepositionY, 1)
        end
    })









local Miscc1 = Tabs.Misc:AddSection("Makes Server Lagging")
local miscquake = Tabs.Misc:AddToggle("miscquaketoggle", {Title = "Quake Makes Lag", Default = false })
miscquake:OnChanged(function()
if Options.miscquaketoggle.Value == true then
_G.quakelagmisc = true
else
_G.quakelagmisc = false
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.quakelagmisc then wait()
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Quake)
local vp = x.VTCebvc
for i = 1,5 do
    pcall(function()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == game.Players.LocalPlayer.Name then
            local args = {
    [1] = vp,
    [2] = "QuakePower1",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandTown"):WaitForChild("Runic"):WaitForChild("Union"),
    [5] = v.HumanoidRootPart.CFrame,
    [6] = 100,
    [7] = Vector3.new(150.66384887695312, 230.749755859375, 4937.19677734375)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
        end
    end
    end)
end
wait(0.3)

end
end)
end
end)

local Miscc2 = Tabs.Misc:AddSection("Useful Misc")
local randomtp = Tabs.Misc:AddToggle("randomtptoggle", {Title = "Random Teleport", Default = false })
randomtp:OnChanged(function()
if Options.randomtptoggle.Value == true then
getgenv().bgtyhn = true
else
getgenv().bgtyhn = false
end
end)

Tabs.Misc:AddButton({
        Title = "Fix Cam",
        Description = "Reset Camera (If Error)",
        Callback = function()
	workspace.CurrentCamera:remove()
	wait(.1)
	repeat wait() until game.Players.LocalPlayer.Character ~= nil
	workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
	game.Players.LocalPlayer.CameraMaxZoomDistance = 400
	game.Players.LocalPlayer.CameraMode = "Classic"
	game.Players.LocalPlayer.Character.Head.Anchored = false       
end
    })

spawn(function()
while wait() do
if getgenv().bgtyhn then
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new((math.random(-100000, 100000)), 10000, (math.random(-100000, 100000)))
end)
end
end
end)


local quakerer = Tabs.Player:AddSection("Quake Kill All")
local tytytyty = Tabs.Player:AddSlider("Slider", {
    Title = "Quake Multiple",
    Description = "Change this for adjusting Quake per hit",
    Default = 3,
    Min = 1,
    Max = 10,
    Rounding = 0,
    Callback = function(quarw)
            quaketime = tonumber(quarw)
        end
    })

local quakeall = Tabs.Player:AddToggle("quakealltoggle", {Title = "Quake Kill All", Default = false })
quakeall:OnChanged(function()
if Options.quakealltoggle.Value == true then
_G.quakeewrpowejmroi = true
else
_G.quakeewrpowejmroi = false
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.quakeewrpowejmroi then wait()
pcall(function()
repeat wait()
_G.quakerty = true
wait(5)
_G.quakerty = false
wait()
until _G.quakeewrpowejmroi == false
_G.quakerty = false
end)
end
end)
end
end)


spawn(function()
while wait() do
pcall(function()
if _G.quakerty then
wait()
for i,vv in pairs(game.Players:GetChildren()) do
	if vv.Name ~= game.Players.LocalPlayer.Name then
		for i,cc in pairs(game.Workspace:GetChildren()) do
			if cc:IsA("Model") and cc.Name == vv.Name and cc.HumanoidRootPart.Position.Y < 211000 then
Choosequake = cc.Name
local xr = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Quake)
local vptt = xr.VTCebvc
	pcall(function()
		if _G.quakerty == true and cc.HumanoidRootPart.Position.Y < 211000 then
    			for i,vv in pairs(game:GetService("Workspace"):GetChildren()) do
      				if vv.Name == Choosequake then
                repeat task.wait(0.3)
for i = 1,quaketime do
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(vptt,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,vv.HumanoidRootPart.CFrame,100,Vector3.new(-290.4129333496094, 266.8401794433594, -103.8988037109375))
end
until _G.quakerty == false or cc.HumanoidRootPart.Position.Y > 211000 or cc.Name ~= vv.Name or cc.Humanoid.Health == 0
Choosequake = ""
				end
			end
		end
	end)

			end
		end
	end
end

end
end)
end
end)

local plrsec = Tabs.Player:AddSection("About Player")

    local plrts = Tabs.Player:AddInput("plrts", {
        Title = "Choose Player:",
        Default = "",
        Placeholder = "Insert Here",
        Numeric = false, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function()
        end
    })

    plrts:OnChanged(function()
plrlow = string.lower(plrts.Value)
for i,e in pairs(game.Players:GetChildren()) do
plrchoose = string.lower(e.Name)
if string.find(plrchoose, plrlow) then
	SelectedKillPlayer = e.Name
end
end
end)



local viewplr = Tabs.Player:AddToggle("viewplrtoggle", {Title = "View Chosen Player", Default = false })
viewplr:OnChanged(function()
if Options.viewplrtoggle.Value == true then
getgenv().viewplrr = true
else
getgenv().viewplrr = false
end
end)

Tabs.Player:AddButton({
        Title = "Teleport To Player",
        Description = "Teleport To Chosen Player",
        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame
end
    })
local bringdis = Tabs.Player:AddSlider("Slider", {
    Title = "Bring Distance",
    Description = "Adjust bring distance",
    Default = 4,
    Min = -50,
    Max = 50,
    Rounding = 0,
    Callback = function(dis1t)
            distancebring = tonumber(dis1t)*(-1)
        end
    })

local disbring1aa = Tabs.Player:AddToggle("disbring1aatoggle", {Title = "Bring Chosen Player", Default = false })
disbring1aa:OnChanged(function()
if Options.disbring1aatoggle.Value == true then
_G.BringPlayer = true
else
_G.BringPlayer = false
end
end)

        spawn(function()
            while wait() do
pcall(function()
                if _G.BringPlayer then
                    pcall(function()
                        game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,distancebring)
                    end)
                end
end)
            end
        end)



spawn(function()
while wait() do
pcall(function()
local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
if getgenv().viewplrr == true and plr2.Name == SelectedKillPlayer then
Fluent:Notify({
    Title = "Players Notify",
    Content = "Viewing " ..plr2.Name,
    Duration = 5
})
pcall(function()
repeat wait()
game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
until getgenv().viewplrr == false or plr2.Name ~= SelectedKillPlayer
end)
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
if getgenv().viewplrr == false or plr2.Name ~= SelectedKillPlayer then
pcall(function()
repeat wait()
game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
until getgenv().viewplrr == true or plr2.Name == SelectedKillPlayer
end)
end
end)
end
end)

local Shoo4p = Tabs.Shop:AddSection("Drinks")

local drinkstype = Tabs.Shop:AddDropdown("Dropdown", {
        Title = "Select Drinks",
        Values = {"Smoothie","Cider","Juice","Lemonade","Smoothie+","Cider+","Juice+","Lemonade+"},
        Multi = false,
        Default = "",
    })


    drinkstype:OnChanged(function(typepp)
_G.drinktret = typepp
end)

    local drinkamount = Tabs.Shop:AddInput("drinkamount", {
        Title = "Choose Amount:",
        Default = "",
        Placeholder = "Insert Here",
        Numeric = true, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function()
        end
    })

    drinkamount:OnChanged(function()
drinkff = drinkamount.Value
tretgmm = tonumber(drinkff)
end)

Tabs.Shop:AddButton({
        Title = "Buy Drinks",
        Description = "Buy selected drinks",
        Callback = function()
amountdrink = tretgmm
if _G.drinktret == "Smoothie" or _G.drinktret == "Cider" or _G.drinktret == "Juice" or _G.drinktret == "Lemonade" then
for i = 1,amountdrink do
    local args = {
        [1] = _G.drinktret
    }
    
workspace.Merchants.DrinkMerchant.Clickable.Retum:FireServer(unpack(args))
end
elseif _G.drinktret == "Smoothie+" or _G.drinktret == "Cider+" or _G.drinktret == "Juice+" or _G.drinktret == "Lemonade+" then
for i = 1,amountdrink do
    local args = {
        [1] = _G.drinktret
    }
    
workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(unpack(args))
end
end
end
    })

Tabs.Shop:AddButton({
        Title = "Instant Drink",
        Description = "Fast Drink",
        Callback = function()

                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and string.find(v.Name, "Juice") or string.find(v.Name, "Milk") or string.find(v.Name, "Cider") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Smoothie") or string.find(v.Name, "Golden") then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
v:Activate()
                                        end
                    end
end
    })






local Shoo1p = Tabs.Shop:AddSection("Melee Weapon")
    Tabs.Shop:AddButton({
        Title = "Seastone Cestus (Fake Equipment)",
        Description = "Requires 500 Melee",
        Callback = function()
local plr = tostring(game.Players.LocalPlayer)
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game.Players.LocalPlayer.Backpack:FindFirstChild("Melee") or game.Players.LocalPlayer.Backpack:FindFirstChild("Table Kick") or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Seastone Cestus") or game.Players.LocalPlayer.Backpack:FindFirstChild("Aqua Staff") then
if game.Workspace.UserData["User_"..plrid].Data.MeleeLevel.Value >= 500 then
pcall(function()
          local Players = game:GetService("Players")
    local cache = {}
    function lol(name)
        if cache[name] then return cache[name] end
        local player = Players:FindFirstChild(name)
        if player then
            cache[name] = player.UserId
            return player.UserId
        end 
    
        local id
        pcall(function ()
            id = Players:lol(name)
        end)
        cache[name] = id
        return id
    end
    local ehh = game.Players.LocalPlayer.Name
    local Final = lol(ehh)
    local A_1 = "Seastone Cestus"
    local Event = game:GetService("Workspace").UserData["User_"..Final].UpdateMelee
    Event:FireServer(A_1)
end)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Equipped Seastone Cestus",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Your Melee Level Is Lower Than 500",
    Duration = 5
})
end
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Please Spawn",
    Duration = 5
})
end
        end
    })

    Tabs.Shop:AddButton({
        Title = "Aqua Staff (Fake Equipment)",
        Description = "Requires 500 Melee",
        Callback = function()
local plr = tostring(game.Players.LocalPlayer)
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game.Players.LocalPlayer.Backpack:FindFirstChild("Melee") or game.Players.LocalPlayer.Backpack:FindFirstChild("Table Kick") or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Seastone Cestus") or game.Players.LocalPlayer.Backpack:FindFirstChild("Aqua Staff") then
if game.Workspace.UserData["User_"..plrid].Data.MeleeLevel.Value >= 500 then
pcall(function()
          local Players = game:GetService("Players")
    local cache = {}
    function lol(name)
        if cache[name] then return cache[name] end
        local player = Players:FindFirstChild(name)
        if player then
            cache[name] = player.UserId
            return player.UserId
        end 
    
        local id
        pcall(function ()
            id = Players:lol(name)
        end)
        cache[name] = id
        return id
    end
    local ehh = game.Players.LocalPlayer.Name
    local Final = lol(ehh)
    local A_1 = "Aqua Staff"
    local Event = game:GetService("Workspace").UserData["User_"..Final].UpdateMelee
    Event:FireServer(A_1)
end)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Equipped Aqua Staff",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Your Melee Level Is Lower Than 500",
    Duration = 5
})
end
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Please Spawn",
    Duration = 5
})
end
        end
    })


local Shooppp1 = Tabs.Shop:AddSection("Sword")
    Tabs.Shop:AddButton({
        Title = "Dagger",
        Description = "Requires 1,000 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data.PlayerHas_Dagger.Value == false then

if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 1000 then
        local A_1 = "Dagger"
        local A_2 = 1000
        local Event = game:GetService("Workspace").Merchants.SwordMerchant.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Dagger",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Dagger",
    Duration = 5
})
end


        end
    })

    Tabs.Shop:AddButton({
        Title = "Wakizashi",
        Description = "Requires 5,000 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data.PlayerHas_Wakizashi.Value == false then

if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 5000 then
        local A_1 = "Wakizashi"
        local A_2 = 5000
        local Event = game:GetService("Workspace").Merchants.SwordMerchant.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Wakizashi",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Wakizashi",
    Duration = 5
})
end


        end
    })

    Tabs.Shop:AddButton({
        Title = "Tachi",
        Description = "Requires 7,500 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data.PlayerHas_Tachi.Value == false then

if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 7500 then
        local A_1 = "Tachi"
        local A_2 = 7500
        local Event = game:GetService("Workspace").Merchants.SwordMerchant.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Tachi",
    Duration = 5
})

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end


else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Tachi",
    Duration = 5
})
end


        end
    })

    Tabs.Shop:AddButton({
        Title = "Katana",
        Description = "Requires 10,000 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data.PlayerHas_Katana.Value == false then
if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 10000 then

        local A_1 = "Katana"
        local A_2 = 10000
        local Event = game:GetService("Workspace").Merchants.SwordMerchant.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Katana",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Katana",
    Duration = 5
})
end


        end
    })

    Tabs.Shop:AddButton({
        Title = "Flail",
        Description = "Requires 50,000 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data.PlayerHas_Flail.Value == false then
if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 50000 then

        local A_1 = "Flail"
        local A_2 = 50000
        local Event = game:GetService("Workspace").Merchants.FlailMerchant.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Flail",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Flail",
    Duration = 5
})
end


        end
    })

    Tabs.Shop:AddButton({
        Title = "Krizma",
        Description = "Requires 80,000 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data.PlayerHas_Krizma.Value == false then
if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 80000 then

        local A_1 = "Krizma"
        local A_2 = 80000
        local Event = game:GetService("Workspace").Merchants.KrizmaMerch.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Krizma",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Krizma",
    Duration = 5
})
end


        end
    })

local Shoo3p = Tabs.Shop:AddSection("Gun")

    Tabs.Shop:AddButton({
        Title = "Slingshot",
        Description = "Requires 1,000 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data.PlayerHas_Slingshot.Value == false then
if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 1000 then

        local A_1 = "Slingshot"
        local A_2 = 1000
        local Event = game:GetService("Workspace").Merchants.SniperMerchant.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Slingshot",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Slingshot",
    Duration = 5
})
end


        end
    })

    Tabs.Shop:AddButton({
        Title = "Stars",
        Description = "Requires 5,000 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data.PlayerHas_Stars.Value == false then
if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 5000 then

        local A_1 = "Stars"
        local A_2 = 5000
        local Event = game:GetService("Workspace").Merchants.SniperMerchant.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Stars",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Stars",
    Duration = 5
})
end


        end
    })

    Tabs.Shop:AddButton({
        Title = "Crossbow",
        Description = "Requires 7,500 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data.PlayerHas_Crossbow.Value == false then
if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 7500 then

        local A_1 = "Crossbow"
        local A_2 = 7500
        local Event = game:GetService("Workspace").Merchants.SniperMerchant.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Crossbow",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Crossbow",
    Duration = 5
})
end


        end
    })

    Tabs.Shop:AddButton({
        Title = "Flintlock",
        Description = "Requires 10,000 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data.PlayerHas_Flintlock.Value == false then
if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 10000 then

        local A_1 = "Flintlock"
        local A_2 = 10000
        local Event = game:GetService("Workspace").Merchants.SniperMerchant.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Flintlock",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Flintlock",
    Duration = 5
})
end


        end
    })

    Tabs.Shop:AddButton({
        Title = "Cannon Ball",
        Description = "Requires 400,000 Beries",
        Callback = function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game:GetService("Workspace").UserData["User_"..plrid].Data["PlayerHas_Cannon Ball"].Value == false then
if game:GetService("Workspace").UserData["User_"..plrid].Data.Cash.Value >= 400000 then

        local A_1 = "Cannon Ball"
        local A_2 = 400000
        local Event = game:GetService("Workspace").Merchants.HeavyWeaponsMerchant.Clickable.Retum
        Event:FireServer(A_1, A_2)
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You just bought Cannon Ball",
    Duration = 5
})
else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "Lack Of Beries",
    Duration = 5
})
end

else
Fluent:Notify({
    Title = "Saluna Shop Notify",
    Content = "You have already got Cannon Ball",
    Duration = 5
})
end


        end
    })














local FruitFFt = Tabs.Fruit:AddSection("Fruit Stuff")
local bringfruit = Tabs.Fruit:AddToggle("bringfruittoggle", {Title = "Auto Bring Fruit", Default = false })
bringfruit:OnChanged(function()
if Options.bringfruittoggle.Value == true then
getgenv().pickkk = true
else
getgenv().pickkk = false
end
end)

local openboxrare = Tabs.Fruit:AddToggle("openboxraretoggle", {Title = "Auto Open Rare/Ultra Box", Default = false })
openboxrare:OnChanged(function()
if Options.openboxraretoggle.Value == true then
_G.openrare = true
else
_G.openrare = false
end
end)

local storefruit = Tabs.Fruit:AddToggle("storefruittoggle", {Title = "Auto Store Rare/Ultra Fruit", Default = false })
storefruit:OnChanged(function()
if Options.storefruittoggle.Value == true then
_G.storeffrt = true
else
_G.storeffrt = false
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.openrare then
            pcall(function()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and string.find(v.Name, "Rare") then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
v:Activate()
                                        end
                                    end
            end)
end
end)
end
end)









function storedf()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
if game.Workspace.UserData["User_"..plrid].Data.StoredDF1Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF1.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF1.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF2Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF2.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF2.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF3Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF3.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF3.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF4Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF4.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF4.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF5Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF5.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF5.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF6Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF6.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF6.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF7Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF7.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF7.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF8Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF8.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF8.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF9Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF9.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF9.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF10Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF10.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF10.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF11Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF11.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF11.Button.MouseButton1Click)) do
v.Function()
end
wait()
elseif game.Workspace.UserData["User_"..plrid].Data.StoredDF12Unlocked.Value == true and workspace.UserData["User_"..plrid].Data.StoredDF12.Value == "None" then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Storage.Frame.StoredDF12.Button.MouseButton1Click)) do
v.Function()
end
wait()
end
end

local Rarefruit = {
"Candy Fruit",
"Chilly Fruit",
"Flare Fruit",
"Gas Fruit",
"Gravity Fruit",
"Hollow Fruit",
"Light Fruit",
"Magma Fruit",
"Ope Fruit",
"Plasma Fruit",
"Rumble Fruit",
"Sand Fruit",
"Smoke Fruit",
"Snow Fruit",
"Venom Fruit",
"Dark Fruit",
"Phoenix Fruit",
"Quake Fruit",
"Vampire Fruit"
}

spawn(function()
    while task.wait() do
        pcall(function()
if _G.storeffrt then
            pcall(function()
for _, v in pairs(Rarefruit) do
if game.Players.LocalPlayer.Backpack:FindFirstChild(v) then
repeat wait()
local x = game.Players.LocalPlayer.Backpack:FindFirstChild(v)
x.Parent = game.Players.LocalPlayer.Character
wait()
storedf()
until x.Parent ~= game.Players.LocalPlayer.Character
end
end
end)
end
end)
end
end)


spawn(function()
    while task.wait() do
        pcall(function()
if getgenv().pickkk then
            pcall(function()
for i,v in pairs(game:GetService("Workspace").Trees.Tree:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
            end)
end
end)
end
end)



local FruitF = Tabs.Fruit:AddSection("Auto Compass")
local getcompass = Tabs.Fruit:AddToggle("getcompasstoggle", {Title = "Auto Get Compass", Default = false })
getcompass:OnChanged(function()
if Options.getcompasstoggle.Value == true then
getgenv().claim = true
else
getgenv().claim = false
end
end)

spawn(function()
    while task.wait() do
        pcall(function()
if getgenv().claim then
            pcall(function()
                workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
            end)
task.wait(1)
end
end)
end
end)

local findcompass = Tabs.Fruit:AddToggle("findcompasstoggle", {Title = "Auto Find Compass", Default = false })
findcompass:OnChanged(function()
if Options.findcompasstoggle.Value == true then
getgenv().find = true
else
getgenv().find = false
end
end)

spawn(function()
    while task.wait() do
        pcall(function()
if getgenv().find then
                pcall(function()
if game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Compass"])
end

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Compass" then              
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Poser.Value)
end

if game.Players.LocalPlayer.Character:FindFirstChild("Compass") then
game.Players.LocalPlayer.Character.Compass:Activate()
end
    end
       end)
wait(0.5)
end
end)
end
end)


local Cannon = Tabs.Farm:AddSection("Auto Cannon Farming")

local fastcannon = Tabs.Farm:AddToggle("fastcannontoggle", {Title = "Fast Cannon", Default = false })
fastcannon:OnChanged(function()
if Options.fastcannontoggle.Value == true then
_G.autocannon = true

if game.Players.LocalPlayer.Character:FindFirstChild("Cannon Ball") then
wait()
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
end

else
_G.autocannon = false
end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.autocannon then
                local toolname = "Cannon Ball"
                local Plr = game:GetService("Players").LocalPlayer
                wait(0.2)
                if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
repeat wait()
                    local tool = Plr.Backpack:FindFirstChild(toolname)
                    Plr.Character.Humanoid:EquipTool(tool)
                    wait(0.5)
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
until not game.Players.LocalPlayer.Character:FindFirstChild("Cannon Ball")
wait()
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon and game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                task.wait(1)
                for i=1,2 do
                    game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(15) do
        pcall(function()
            if _G.autocannon then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name == "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name ~= "Cannon" and v.Name ~= "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)



local autocannonmob = Tabs.Farm:AddToggle("cannonmobtoggle", {Title = "Auto Farm Mobs (Cannon)", Default = false })
autocannonmob:OnChanged(function()
if Options.cannonmobtoggle.Value == true then
_G.autocannonslow = true
else
_G.autocannonslow = false
end
end)

local autocannonplr = Tabs.Farm:AddToggle("cannonplrtoggle", {Title = "Auto Kill All Player (Cannon)", Default = false })
autocannonplr:OnChanged(function()
if Options.cannonplrtoggle.Value == true then
_G.autocannonplr = true
else
_G.autocannonplr = false
end
end)

local Cannon = Tabs.Farm:AddSection("Auto Buso (Only 1 Allowed)")

local autobusohaki = Tabs.Farm:AddToggle("autobusohakitoggle", {Title = "Auto Buso (On/Off)", Default = false })
autobusohaki:OnChanged(function()
if Options.autobusohakitoggle.Value == true then
_G.autohakibuso = true
else
_G.autohakibuso = false
end
end)

local Cannon = Tabs.Farm:AddSection("Auto Buso (Fast Regen)")
local regentargetslider = Tabs.Farm:AddSlider("Slider", {
    Title = "Regen Target (%)",
    Description = "Change this for adjusting regen target",
    Default = 70,
    Min = 30,
    Max = 90,
    Rounding = 0,
    Callback = function(weqrww)
            regentarget = tonumber(weqrww)
        end
    })

local regenspeedslider = Tabs.Farm:AddSlider("Slider", {
    Title = "Regen Speed",
    Description = "Change this for adjusting regen speed",
    Default = 20,
    Min = 5,
    Max = 50,
    Rounding = 0,
    Callback = function(weqrwwtt)
            regenspeed = tonumber(weqrwwtt)
        end
    })


local autoregenhaki = Tabs.Farm:AddToggle("autoregenhakitoggle", {Title = "Auto Buso Fast Regen", Default = false })
autoregenhaki:OnChanged(function()
if Options.autoregenhakitoggle.Value == true then
_G.autohakicannon = true
_G.offhaki = true
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
local hakigoc = game.workspace.UserData["User_"..plrid].Data.HakiLevel.Value
local hakiuse = hakigoc/100*regentarget
wait()
if game.Workspace.UserData["User_"..plrid].HakiBar.Value > hakiuse then
_G.onhaki = true
_G.regenhaki = false
elseif game.Workspace.UserData["User_"..plrid].HakiBar.Value <= hakiuse then
_G.onhaki = false
_G.regenhaki = true
end
else
_G.autohakicannon = false
_G.offhaki = false
_G.onhaki = false
_G.regenhaki = false
end
end)



spawn(function()
while wait() do
pcall(function()
if _G.autohakicannon then
pcall(function()

local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
local hakigoc = game.workspace.UserData["User_"..plrid].Data.HakiLevel.Value
local hakiuse = hakigoc/100*regentarget
repeat wait()
until game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Visible == true

if game.Workspace.UserData["User_"..plrid].HakiBar.Value > hakiuse then
_G.onhaki = true
elseif game.Workspace.UserData["User_"..plrid].HakiBar.Value <= hakiuse then
_G.regenhaki = true
end

end)
end
end)
end
end)


spawn(function()
while wait() do
pcall(function()
if _G.autohakicannon then
pcall(function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
local hakigoc = game.workspace.UserData["User_"..plrid].Data.HakiLevel.Value
local hakiuse = hakigoc/100*regentarget
if _G.onhaki == true and not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
wait(0.5)
game.workspace.UserData["User_" ..game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
end
_G.onhaki = false
_G.regenhaki = true
end)
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.autohakicannon then
pcall(function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
local hakigoc = game.workspace.UserData["User_"..plrid].Data.HakiLevel.Value
local hakiuse = hakigoc/100*regentarget

if _G.offhaki == true and game.Workspace.UserData["User_"..plrid].HakiBar.Value < hakiuse and game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
wait(0.5)
game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
wait()
end

end)
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.autohakicannon then
pcall(function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
local hakigoc = game.workspace.UserData["User_"..plrid].Data.HakiLevel.Value
local hakiuse = hakigoc/100*regentarget
local hakimuon = hakiuse + 10
if _G.regenhaki == true and not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") and game.Workspace.UserData["User_"..plrid].HakiBar.Value < hakimuon then
wait()
 local Players = game:GetService("Players")
local cache = {}
    function lol(name)
        if cache[name] then return cache[name] end
        local player = Players:FindFirstChild(name)
        if player then
            cache[name] = player.UserId
            return player.UserId
        end 
    
        local id
        pcall(function ()
            id = Players:lol(name)
        end)
        cache[name] = id
        return id
    end
    local ehh = game.Players.LocalPlayer.Name
    local Final = lol(ehh)
for i = 1, regenspeed do wait()
    local args = {
        [1] = "Off",
        [2] = hakigoc
    }
    
    workspace.UserData["User_"..plrid].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = hakigoc
    }
    
    workspace.UserData["User_"..plrid].III:FireServer(unpack(args))
    end
wait(0.1)
        local args = {
        [1] = "Off",
        [2] = hakigoc
    }
    
    workspace.UserData["User_"..plrid].III:FireServer(unpack(args))
wait()
        local args = {
        [1] = "Off",
        [2] = hakigoc
    }
    
    workspace.UserData["User_"..plrid].III:FireServer(unpack(args))
wait()
repeat task.wait()
until game.Workspace.UserData["User_"..plrid].HakiBar.Value >= hakigoc or game.Players.LocalPlayer.Character.Humanoid.Health == 0 or _G.autohakicannon == false
if game.Workspace.UserData["User_"..plrid].HakiBar.Value >= hakigoc and _G.regenhaki == true then 
wait()
_G.onhaki = true
_G.regenhaki = false
end

end


end)
end
end)
end
end)



















local Fishing = Tabs.Farm:AddSection("Auto Fishing")

local autofish = Tabs.Farm:AddToggle("fishytoggle", {Title = "Auto Fish (Cannot be used with Auto-Package)", Default = false })
autofish:OnChanged(function()
if Options.fishytoggle.Value == true then
getgenv().fishing = true
else
getgenv().fishing = false
end
end)


spawn(function()
    while wait() do
        pcall(function()
            if _G.autohakibuso then
                task.wait(0)
                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end

            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
local plr = game.Players.LocalPlayer
if getgenv().fishing and not game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
for i,v in pairs(plr.Backpack:GetChildren()) do
if string.find(v.Name, "Rod") then
v.Parent = plr.Character
                end
            end
         end
      end)
   end
end)

spawn(function()
    while task.wait() do
        pcall(function()
if getgenv().fishing and not game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["fishingplace"].CFrame * CFrame.new(0, 3, 0)
wait(0.1)
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if string.find(v.Name, "Rod") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end
end
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
end
      end)
   end
end)

local Package = Tabs.Farm:AddSection("Auto Package")

local autopackage = Tabs.Farm:AddToggle("packagetoggle", {Title = "Auto Package (Cannot be used with Auto-Fishing)", Default = false })
autopackage:OnChanged(function()
if Options.packagetoggle.Value == true then
getgenv().tret = true
else
getgenv().tret = false
end
end)

spawn(function()
while wait() do
pcall(function()
if getgenv().tret then
pcall(function()
workspace:WaitForChild("Merchants"):WaitForChild("QuestFishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
wait(2)
end)
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if getgenv().tret then
pcall(function()
if game.Players.LocalPlayer.Backpack:FindFirstChild("Package") and not game.Players.LocalPlayer.Character:FindFirstChild("Package") then
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Package").Parent = game.Players.LocalPlayer.Character
                            game.Players.LocalPlayer.Character.Humanoid.Sit = true
                            elseif game.Players.LocalPlayer.Character:FindFirstChild("Package")  then
if game.Players.LocalPlayer.Character.Humanoid.Sit == false then
game.Players.LocalPlayer.Character.Humanoid.Sit = true
end
 for _,v in pairs(game.Workspace.Merchants:GetChildren()) do
if string.find(v.Name, "Aff") or string.find(v.Name, "Heavy") or string.find(v.Name, "Drink") or string.find(v.Name, "Boat") or string.find(v.Name, "Emote") or string.find(v.Name, "Exp") or string.find(v.Name, "Fish") or string.find(v.Name, "Flail") or string.find(v.Name, "Krizma") or string.find(v.Name, "QuestFish") or string.find(v.Name, "QuestMe") or string.find(v.Name, "Friend") or string.find(v.Name, "Sniper") or string.find(v.Name, "Sword") and v:FindFirstChild("HumanoidRootPart") then
if not game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame + Vector3.new(1, 0, 0)
wait(0.3)
game.Players.LocalPlayer.Character.Package:Activate()
end
end
end
elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Package") and not game.Players.LocalPlayer.Character:FindFirstChild("Compass") then
if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new((math.random(-100000, 100000)), 10000, (math.random(-100000, 100000)))
end
end)
end
end)
end
end)


spawn(function()
    while task.wait() do
        pcall(function()
local plr = game.Players.LocalPlayer
if _G.autocannonslow or _G.autocannonplr then
if _G.autocannon == false then
for i,v in pairs(plr.Backpack:GetChildren()) do
repeat task.wait()
if v.Name == "Cannon Ball" then
v.Parent = plr.Character
end
until not _G.autocannonslow and not _G.autocannonplr 
end
end
end
      end)
   end
end)

    spawn(function() -- autofarm teleport cannon
    while wait() do
        pcall(function()
            if _G.autocannonplr then
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.Transparency = 0.9
                    	v.Character.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.Character.HumanoidRootPart.CanCollide = false
                        v.Character.HumanoidRootPart.Size = Vector3.new(1000, 1000, 1000)
                    end
                end
            end
        end)
    end
end)



spawn(function()
    while task.wait() do
        pcall(function()
            if _G.autocannonplr or _G.autocannonslow then
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait()
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait()
                if game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall") then
                    game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall").CanCollide = false
                end
            end
        end)
    end
end)

spawn(function() -- autofarm velocity
    while wait(0) do
        pcall(function()
            if _G.autocannonslow or _G.autocannonplr or getgenv().bgtyhn or getgenv().fishing or getgenv().tret or getgenv().e or getgenv().c or getgenv().a or getgenv().t or getgenv().emladepnwwhat or getgenv().emladepnhat then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
            elseif _G.autocannonslow == false or _G.autocannonplr == false or getgenv().bgtyhn == false or getgenv().fishing == false or getgenv().tret == false or  getgenv().e == false or getgenv().c == false or getgenv().a == false or getgenv().t == false or getgenv().emladepnwwhat == false or getgenv().emladepnhat == false then
                --if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                wait(1)
                --end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.autocannonslow then
                repeat task.wait(0.2)
                    for i, v in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                        if v.Name == "CannonBall" then
                            v.CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)
                            v.CanCollide = false
                        end
                    end
                until _G.autocannonslow == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
            end
        end)
    end
end)


spawn(function() -- autofarm cannon
    while wait() do
        pcall(function()
            if _G.autocannonslow then wait()
fireclickdetector(workspace.Island11.CentralBuilding.Doors.Button.Button.ClickDetector)
wait()
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, " Boar")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
wait()
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Crab")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
wait()
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Angry ") 
                    or string.find(v.Name, "Bandit") 
                    or string.find(v.Name, "Thief")
                    or string.find(v.Name, "Bruno") 
                    or string.find(v.Name, "Bucky") 
                    or string.find(v.Name, " Vokun") 
                    or string.find(v.Name, "Fred")  
                    or string.find(v.Name, "Cave ") 
                    or string.find(v.Name, "Thug") 
                    or string.find(v.Name, "Gunslinger")
                    or string.find(v.Name, "Gunner") 
                    or string.find(v.Name, "Buster") 
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
while wait() do
pcall(function()
if _G.autocannonplr then wait()
pcall(function()
repeat wait()
_G.chon2 = true
wait(5)
_G.chon2 = false
wait()
until _G.autocannonplr == false
_G.chon2 = false
end)
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.chon2 then
wait()
for i,v in pairs(game.Players:GetChildren()) do
	if v.Name ~= game.Players.LocalPlayer.Name then
		for i,c in pairs(game.Workspace:GetChildren()) do
			if c.Name == v.Name and c.HumanoidRootPart.Position.Y < 211000 and c.Humanoid.Health > 0 then
Choose2 = c.Name
	pcall(function()
                repeat task.wait(0.1)
					for i, q in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                      				if q.Name == "CannonBall" then
                          			q.CFrame = c.HumanoidRootPart.CFrame
                           			q.CanCollide = false
						end
					end
until _G.chon2 == false or c.HumanoidRootPart.Position.Y > 211000 or c.Name ~= v.Name or c.Humanoid.Health == 0
Choose2 = ""
	end)

			end
		end
	end
end

end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.chon2 then
wait()
for i,d in pairs(game.Players:GetChildren()) do
	if d.Name ~= game.Players.LocalPlayer.Name then
		for i,b in pairs(game.Workspace:GetChildren()) do
			if b.Name == d.Name and b.HumanoidRootPart.Position.Y < 211000 and b.Humanoid.Health > 0 and b.Name ~= Choose2 then
Choose3 = b.Name
	pcall(function()
                repeat task.wait(0.12)
					for i, e in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                      				if e.Name == "CannonBall" then
                          			e.CFrame = b.HumanoidRootPart.CFrame
                           			e.CanCollide = false
						end
					end
until _G.chon2 == false or b.HumanoidRootPart.Position.Y > 211000 or b.Name ~= d.Name or b.Humanoid.Health == 0
Choose3 = ""
	end)

			end
		end
	end
end

end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.chon2 then
wait()
for i,f in pairs(game.Players:GetChildren()) do
	if f.Name ~= game.Players.LocalPlayer.Name then
		for i,h in pairs(game.Workspace:GetChildren()) do
			if h.Name == f.Name and h.HumanoidRootPart.Position.Y < 211000 and h.Humanoid.Health > 0 and h.Name ~= Choose2 and h.Name ~= Choose3 then
Choose4 = h.Name
	pcall(function()
                repeat task.wait(0.14)
					for i, w in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                      				if w.Name == "CannonBall" then
                          			w.CFrame = h.HumanoidRootPart.CFrame
                           			w.CanCollide = false
						end
					end
until _G.chon2 == false or h.HumanoidRootPart.Position.Y > 211000 or h.Name ~= f.Name or h.Humanoid.Health == 0
Choose4 = ""
	end)

			end
		end
	end
end

end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.chon2 then
wait()
for i,g in pairs(game.Players:GetChildren()) do
	if g.Name ~= game.Players.LocalPlayer.Name then
		for i,j in pairs(game.Workspace:GetChildren()) do
			if j.Name == g.Name and j.HumanoidRootPart.Position.Y < 211000 and j.Humanoid.Health > 0 and j.Name ~= Choose2 and j.Name ~= Choose3 and j.Name ~= Choose4 then
Choose5 = j.Name
	pcall(function()
                repeat task.wait(0.16)
					for i, t in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                      				if t.Name == "CannonBall" then
                          			t.CFrame = j.HumanoidRootPart.CFrame
                           			t.CanCollide = false
						end
					end
until _G.chon2 == false or j.HumanoidRootPart.Position.Y > 211000 or j.Name ~= g.Name or j.Humanoid.Health == 0
Choose5 = ""
	end)

			end
		end
	end
end

end
end)
end
end)

local Autorj = Tabs.Automatic:AddSection("General Function")
local AutorjToggle = Tabs.Automatic:AddToggle("Autorj1Toggle", {Title = "Auto Hop Server If Disconnect", Default = false })
    AutorjToggle:OnChanged(function()
if Options.Autorj1Toggle.Value == true then
_G.autorj = true
Fluent:Notify({
    Title = "Auto Function Notify",
    Content = "Auto Reconnect Is Turned On",
    Duration = 5
})
else
_G.autorj = false
end
end)

spawn(function()
while true do wait()
if _G.autorj then
pcall(function()
if game.CoreGui.RobloxPromptGui.promptOverlay.Active == true then
TeleportService = game:GetService("TeleportService")
HttpService = game:GetService("HttpService")
PlaceId, JobId = game.PlaceId, game.JobId
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
	if httprequest then
		httprequest({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = HttpService:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = HttpService:GenerateGUID(false),
				args = {code = 'dYHag43eeU'}
			})
		})
	end   
 if httprequest then
        local servers = {}
        local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", PlaceId)})
        local body = HttpService:JSONDecode(req.Body)

        if body and body.data then
            for i, v in next, body.data do
                if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
                    table.insert(servers, 1, v.id)
                end
            end
        end

        if #servers > 0 then
            TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
        else
            return notify("Serverhop", "Couldn't find a server.")
        end
    else
        notify("Incompatible Exploit", "Your exploit does not support this command (missing request)")
    end          

end
end)
end
end
end)

local Autospawn = Tabs.Automatic:AddSection("In-Game Function")
local AutospawnToggle = Tabs.Automatic:AddToggle("Autospawn1Toggle", {Title = "Auto Spawn", Default = false })
    AutospawnToggle:OnChanged(function()
if Options.Autospawn1Toggle.Value == true then
_G.autospawn = true
Fluent:Notify({
    Title = "Auto Function Notify",
    Content = "Auto Spawn Is Turned On",
    Duration = 5
})
else
_G.autospawn = false
end
end)

        spawn(function()
            while wait() do
                if _G.autospawn then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Visible == true then
                            repeat wait(4)
                                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
                                    v.Function()
                                end
                            until game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Visible == false
                        end
                    end)
                end
            end
	end)

local AutogetexpToggle = Tabs.Automatic:AddToggle("Autogetexp1Toggle", {Title = "Auto Get Expertise", Default = false })
    AutogetexpToggle:OnChanged(function()
if Options.Autogetexp1Toggle.Value == true then
_G.autogetexp = true
Fluent:Notify({
    Title = "Auto Function Notify",
    Content = "Auto Get Expertise Quest Is Turned On",
    Duration = 5
})
else
_G.autogetexp = false
end
end)

        spawn(function()
            while wait() do
                if _G.autogetexp then
                    pcall(function()
workspace:WaitForChild("Merchants"):WaitForChild("ExpertiseMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
wait(5)
                    end)
                end
            end
	end)




local Safe = Tabs.Teleport:AddSection("Special Teleport")

Tabs.Teleport:AddButton({
        Title = "Teleport To Safe Zone",
        Description = "(A high platform)",
        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
        end
    })

Tabs.Teleport:AddButton({
        Title = "Teleport To Rayleigh",
        Description = "Check and teleport to Rayleigh if he spawns",
        Callback = function()
if game:GetService("Workspace").Merchants.QuestHakiMerchant.Clickable.Available.Value == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.QuestHakiMerchant.HumanoidRootPart.CFrame
else
Fluent:Notify({
    Title = "Rayleigh Notify",
    Content = "Rayleigh hasn't spawned yet",
    Duration = 4
})
end
        end
    })

Tabs.Teleport:AddButton({
        Title = "Teleport To Dark Atlas",
        Description = "(Legendary Pedestal)",
        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 0, 0)
        end
    })

local Tmrt = Tabs.Teleport:AddSection("Teleport")

local MobsTP = Tabs.Teleport:AddDropdown("Dropdown", {
        Title = "NPC Teleport",
        Values = {"Bartender (Sam)", "Bartender (Bar)", "Sam", "Friend", "Cannon Seller", "Krizma Seller", "Flair Seller", "Sword Seller", "Gun Seller", "Merlin", "Emotes Teacher", "Lucy (Affinity)", "Chef", "Expertise Giver"},
        Multi = false,
        Default = "",
    })


    MobsTP:OnChanged(function(Mobbb)
if Mobbb == "Bartender (Sam)" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.DrinkMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Bartender (Bar)" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.BetterDrinkMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Sam" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.QuestMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Friend" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.FriendMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Cannon Seller" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.HeavyWeaponsMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Krizma Seller" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.KrizmaMerch.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Flair Seller" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.FlailMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Sword Seller" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.SwordMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Gun Seller" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.SniperMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Merlin" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.QuestFishMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Emotes Teacher" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.EmoteMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Lucy (Affinity)" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.AffinityMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Chef" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.FishMerchant.HumanoidRootPart.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
elseif Mobbb == "Expertise Giver" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.ExpertiseMerchant.Head.CFrame
Fluent:Notify({
    Title = "Teleport Notify",
    Content = "Teleported to " ..Mobbb,
    Duration = 1
})
end
end)


local Wep = Tabs.Weapon:AddSection("Equipment")
local weapontype = Tabs.Weapon:AddDropdown("Dropdown", {
        Title = "Select Weapon Type",
        Values = {"Melee","Sniper","Sword","Utility"},
        Multi = false,
        Default = "",
    })


    weapontype:OnChanged(function(wtypea)
_G.weponity = wtypea
end)

local equipwe = Tabs.Weapon:AddToggle("equipwetoggle", {Title = "Auto Equip Weapon", Default = false })
equipwe:OnChanged(function()
if Options.equipwetoggle.Value == true then
getgenv().eqqqqq = true
else
getgenv().eqqqqq = false
end
end)

local attackweapon = Tabs.Weapon:AddToggle("attackweapontoggle", {Title = "Auto Use Weapon", Default = false })
attackweapon:OnChanged(function()
if Options.attackweapontoggle.Value == true then
getgenv().useweapon = true
else
getgenv().useweapon = false
end
end)

local MeleeTTT = {
"Melee",
"Table Kick",
"Black Leg",
"Seastone Cestus",
"Aqua Staff"
}

local SniperTTT = {
"Slingshot",
"Stars",
"Crossbow",
"Flintlock",
"Cannon Ball"
}

local SwordTTT = {
"Dagger",
"Wakizashi",
"Tachi",
"Katana",
"Flail",
"Krizma",
"Kogatana",
"Yoru",
"Golden Fish",
"Ultra Great Sword",
"Masamune",
"Candy Cane Yoru",
"Divine Axe",
"Kanshou and Byakuya",
"Scissor Blade",
"Lightning Sword",
"Meteorite Sword"
}

local UtilityTTT = {
"Wood Rod",
"Sturdy Rod",
"Super Rod",
"Zombie Head",
"Tea Cup",
"Santa Bag",
"Tea Kettle"
}

spawn(function()
while wait() do
pcall(function()
if getgenv().useweapon then
pcall(function()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do


for i,c in pairs(MeleeTTT) do
if v.Name == c then
v:Activate()
end
end

for i,d in pairs(SniperTTT) do
if v.Name == d then
v:Activate()
end
end

for i,e in pairs(SwordTTT) do
if v.Name == e then
v:Activate()
end
end

for i,f in pairs(UtilityTTT) do
if v.Name == f then
v:Activate()
end
end


end
end)
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if getgenv().eqqqqq then
pcall(function()
if _G.weponity == "Melee" then


for _, c in pairs(MeleeTTT) do
if game.Players.LocalPlayer.Backpack:FindFirstChild(c) then
local x = game.Players.LocalPlayer.Backpack:FindFirstChild(c)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(x)
end
end

elseif _G.weponity == "Sniper" then

for _, c in pairs(SniperTTT) do
if game.Players.LocalPlayer.Backpack:FindFirstChild(c) then
local x = game.Players.LocalPlayer.Backpack:FindFirstChild(c)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(x)
end
end

elseif _G.weponity == "Sword" then

for _, c in pairs(SwordTTT) do
if game.Players.LocalPlayer.Backpack:FindFirstChild(c) then
local x = game.Players.LocalPlayer.Backpack:FindFirstChild(c)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(x)
end
end

elseif _G.weponity == "Utility" then

for _, c in pairs(UtilityTTT) do
if game.Players.LocalPlayer.Backpack:FindFirstChild(c) then
local x = game.Players.LocalPlayer.Backpack:FindFirstChild(c)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(x)
end
end



end
end)
end
end)
end
end)


local InstantWeapon = Tabs.Weapon:AddSection("Instant Weapon")
local Yorusec = Tabs.Weapon:AddSection("Yoru Spam")
local YoruSpeed = Tabs.Weapon:AddSlider("Slider", {
    Title = "Yoru Speed",
    Description = "Change this for adjusting Yoru's speed",
    Default = 50,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Callback = function(to)
            Speeds = tonumber(to)
        end
    })

local YoruMulti = Tabs.Weapon:AddSlider("Slider", {
    Title = "Yoru Multi Hit",
    Description = "Change this for adjusting Yoru's hits",
    Default = 200,
    Min = 1,
    Max = 999,
    Rounding = 0,
    Callback = function(hitsss)
            hitts = tonumber(hitsss)
        end
    })

local tyoru = Tabs.Weapon:AddToggle("tyorutoggle", {Title = "Yoru Spamming", Default = false })
tyoru:OnChanged(function()
if Options.tyorutoggle.Value == true then
_G.yoruonrt = true
else
_G.yoruonrt = false
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.yoruonrt then
pcall(function()
    local Players = game:GetService("Players")
    local Plr = Players.LocalPlayer
    local Character = Plr.Character
    local Yoru = Character:FindFirstChild("Yoru")
    local Environment

for i = 1, Speeds do wait()
if _G.yoruonrt then

pcall(function()
for i,v in pairs(getconnections(Yoru["RequestAnimation"].OnClientEvent)) do 
    Environment = getsenv(Yoru["AnimationController"])
end
wait()
for i = 1, hitts do
Yoru["RequestAnimation"]:FireServer(Environment.PlaceId)
end
wait()
end)

end
end

end)
end
end)
end
end)

local Cestussec = Tabs.Weapon:AddSection("Cestus Spam")
local CestusSpeed = Tabs.Weapon:AddSlider("Slider", {
    Title = "Cestus Speed",
    Description = "Change this for adjusting Seastone Cestus's speed",
    Default = 50,
    Min = 1,
    Max = 200,
    Rounding = 0,
    Callback = function(too)
            Speedss = tonumber(too)
        end
    })

local CestusMulti = Tabs.Weapon:AddSlider("Slider", {
    Title = "Cestus Multi Hit",
    Description = "Change this for adjusting Cestus's hits",
    Default = 200,
    Min = 1,
    Max = 999,
    Rounding = 0,
    Callback = function(hitsssces)
            hittsces = tonumber(hitsssces)
        end
    })

local tcestus = Tabs.Weapon:AddToggle("tcestustoggle", {Title = "Cestus Spamming", Default = false })
tcestus:OnChanged(function()
if Options.tcestustoggle.Value == true then
_G.cestusonrt = true
else
_G.cestusonrt = false
end
end)


spawn(function()
while wait() do
pcall(function()
if _G.cestusonrt then
pcall(function()
    local Players = game:GetService("Players")
    local Plr = Players.LocalPlayer
    local Character = Plr.Character
    local Cestus = Character:FindFirstChild("Seastone Cestus")
    local Environment
for i = 1, Speedss do wait()
if _G.cestusonrt then
pcall(function()
for i,v in pairs(getconnections(Cestus["RequestAnimation"].OnClientEvent)) do 
    Environment = getsenv(Cestus["AnimationController"])
end
    wait()
for i = 1, hittsces do
Cestus["RequestAnimation"]:FireServer(Environment.PlaceId)
end
wait()
end)

end
end

end)
end
end)
end
end)

local StatsFF = Tabs.Main:AddSection("Stats Farming")
local statsfarm = Tabs.Main:AddToggle("statstoggle", {Title = "Auto Farm Mixer", Default = false })
statsfarm:OnChanged(function()
if Options.statstoggle.Value == true then
getgenv().farmstats = true
else
getgenv().farmstats = false
end
end)


local statsdrink = Tabs.Main:AddToggle("statsdrinktoggle", {Title = "Auto Drink Mixer", Default = false })
statsdrink:OnChanged(function()
if Options.statsdrinktoggle.Value == true then
getgenv().autodrinkmixer = true
else
getgenv().autodrinkmixer = false
end
end)

spawn(function()
while wait(0.3) do
if getgenv().autodrinkmixer then
pcall(function()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and string.find(v.Name, "Juice") or string.find(v.Name, "Milk") or string.find(v.Name, "Cider") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Smoothie") or string.find(v.Name, "Golden") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
v:Activate()
end
end
for i,c in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if string.find(c.Name, "Crab") then
c:Destroy()
end
end
end)
end
end
end)




spawn(function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while wait(0.3) do
if getgenv().farmstats then
pcall(function()
repeat task.wait() until game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_13"].Claim.AutoButtonColor == true
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge13")
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge14")
wait(2)
end)
end
end
end)

function amongus()
for i,v in pairs(game:GetService("Workspace").Barrels:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
for i,v in pairs(game:GetService("Workspace").Island8.Kitchen:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end

spawn(function()
local user = tostring(game.Players.LocalPlayer.Name)
while wait() do
if getgenv().farmstats then
pcall(function()
for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
if v.Name == "Barrel" then
if getgenv().farmstats == true and not game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
game.workspace[""..user].HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
amongus()
end
wait(0.1)
end
end
for i,v in pairs(game:GetService("Workspace").Barrels:GetDescendants()) do
if v.Name == "Crate" then
if getgenv().farmstats == true and not game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
game.workspace[""..user].HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
amongus()
end
wait(0.1)
end
end
if getgenv().farmstats == true and not game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then wait(0.1)
game.workspace[""..user].HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
end
amongus()
 workspace:WaitForChild("Merchants"):WaitForChild("FishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
wait(15)
end)
end
end
end)

local HakiSection = Tabs.Haki:AddSection("Haki Stuff")
local gethaki = Tabs.Haki:AddToggle("hakiget", {Title = "Auto get haki (1k lvl)", Default = false })
gethaki:OnChanged(function()
if Options.hakiget.Value == true then
_G.gethakiqwe = true
else
_G.gethakiqwe = false
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.gethakiqwe then
pcall(function()
workspace:WaitForChild("Merchants"):WaitForChild("QuestHakiMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
wait(2)
end)
end
end)
end
end)


Tabs.Haki:AddButton({
        Title = "Drain Haki",
        Description = "Click To Drain Haki To 0",
        Callback = function()
function hakiauto()
       local Players = game:GetService("Players")
    local cache = {}
    function lol(name)
        if cache[name] then return cache[name] end
        local player = Players:FindFirstChild(name)
        if player then
            cache[name] = player.UserId
            return player.UserId
        end 
    
        local id
        pcall(function ()
            id = Players:lol(name)
        end)
        cache[name] = id
        return id
    end
    local ehh = game.Players.LocalPlayer.Name
    local Final = lol(ehh)
    
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    
    
    
    end
wait()
for i = 1, 10 do
        hakiauto()
end
end
    })

local hakirjoin = Tabs.Haki:AddToggle("hakirjointoggle", {Title = "Rejoin If 0% Haki", Default = false })
hakirjoin:OnChanged(function()
if Options.hakirjointoggle.Value == true then
_G.rejoinifhaki0 = true
else
_G.rejoinifhaki0 = false
end
end)

spawn(function()
while true do wait()
if _G.rejoinifhaki0 then
pcall(function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
if game.Workspace.UserData["User_"..plrid].HakiBar.Value == 0 then
TeleportService = game:GetService("TeleportService")
HttpService = game:GetService("HttpService")
PlaceId, JobId = game.PlaceId, game.JobId
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
	if httprequest then
		httprequest({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = HttpService:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = HttpService:GenerateGUID(false),
				args = {code = 'dYHag43eeU'}
			})
		})
	end   
 if httprequest then
        local servers = {}
        local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", PlaceId)})
        local body = HttpService:JSONDecode(req.Body)

        if body and body.data then
            for i, v in next, body.data do
                if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
                    table.insert(servers, 1, v.id)
                end
            end
        end

        if #servers > 0 then
            TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
        else
            return notify("Serverhop", "Couldn't find a server.")
        end
    else
        notify("Incompatible Exploit", "Your exploit does not support this command (missing request)")
    end          

end
end)
end
end
end)










local HakiSection2 = Tabs.Haki:AddSection("Auto Haki Farming")
local hakitargett = Tabs.Haki:AddSlider("Slider", {
    Title = "Haki Target (%)",
    Description = "Change this for adjusting haki's target",
    Default = 55,
    Min = 1,
    Max = 90,
    Rounding = 0,
    Callback = function(gmm)
            hakitarget = tonumber(gmm)
        end
    })

local hakispeedt = Tabs.Haki:AddSlider("Slider", {
    Title = "Haki Speed",
    Description = "Change this for adjusting haki's speed",
    Default = 20,
    Min = 1,
    Max = 50,
    Rounding = 0,
    Callback = function(gttmm)
            hakispeed = tonumber(gttmm)
        end
    })

local farmhaki = Tabs.Haki:AddToggle("hakifarm", {Title = "Auto Farm Haki", Default = false })
farmhaki:OnChanged(function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
_G.concu = true
while _G.concu do wait()
local slv = game.workspace.UserData["User_"..plrid].Data.HakiLevel.Value
local sss = slv/100*hakitarget
local sll =  slv/100*90
if game.Workspace.UserData["User_"..plrid].HakiBar.Value > sss and Options.hakifarm.Value == true then
local Players = game:GetService("Players")
local cache = {}
function lol(name)
if cache[name] then
return cache[name] 
end
local player = Players:FindFirstChild(name)
if player then
cache[name] = player.UserId
return player.UserId
end 
    
local id
pcall(function ()
id = Players:lol(name)
end)
cache[name] = id
return id
end

local ehh = game.Players.LocalPlayer.Name
local Final = lol(ehh)
for i = 1, hakispeed do
    local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
    local args = {
        [1] = "On",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
end
elseif game.Workspace.UserData["User_"..plrid].HakiBar.Value <= sss and Options.hakifarm.Value == true then
        local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
repeat task.wait()
until game.Workspace.UserData["User_"..plrid].HakiBar.Value >= sll
_G.concu = true
elseif Options.hakifarm.Value == false then
_G.concu = false
        local args = {
        [1] = "Off",
        [2] = 1
    }
    
    workspace.UserData["User_"..Final].III:FireServer(unpack(args))
end
end
end)

local HakiSection3 = Tabs.Haki:AddSection("Advanced Haki Farming")
local hakiadvancespeed = Tabs.Haki:AddSlider("Slider", {
    Title = "Advanced Haki Speed",
    Description = "Change Advanced Haki Speed",
    Default = 999,
    Min = 1,
    Max = 999,
    Rounding = 0,
    Callback = function(concacadvance)
            speedyadvance = tonumber(concacadvance)
        end
    })

local advaerqwe = Tabs.Haki:AddToggle("advaerqwetoggle", {Title = "Advance Haki Farming", Default = false })
advaerqwe:OnChanged(function()
if Options.advaerqwetoggle.Value == true then
_G.farmadvanced = true
else
_G.farmadvanced = false
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.farmadvanced then
pcall(function()
local x = game.Players.LocalPlayer.UserId
local haki = game:GetService("Workspace").UserData["User_"..x].Data.HakiLevel.Value
wait(5)
for i = 1, speedyadvance do
            local args = {
                [1] = "On",
                [2] = haki
            }
            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            local args = {
                [1] = "Off",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "Off",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "On",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "Off",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "Off",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "On",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "Off",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "Off",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "On",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "Off",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "Off",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "On",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "Off",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            
            local args = {
                [1] = "Off",
                [2] = haki
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
end
end)
end
end)
end
end)

local mgfrrr = Tabs.Server:AddSection("Boost")
    Tabs.Server:AddButton({
        Title = "Low-Graphic Mode",
        Description = "Use to reduce lag",
        Callback = function()
            Window:Dialog({
                Title = "Low-Graphic Mode",
                Content = "Do you want to use?",
                Buttons = {
                    {
                        Title = "OK",
                        Callback = function()
workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
	workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
	workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(child)
		coroutine.wrap(function()
			if child:IsA('ForceField') then
				game:GetService('RunService').Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				game:GetService('RunService').Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				game:GetService('RunService').Heartbeat:Wait()
				child:Destroy()
			end
		end)()
	end)                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

local mgfrrr2 = Tabs.Server:AddSection("Rejoin/Hop")
    Tabs.Server:AddButton({
        Title = "Rejoin Server",
        Description = "Rejoin the current server",
        Callback = function()
            Window:Dialog({
                Title = "Rejoin Server",
                Content = "Do you want to use?",
                Buttons = {
                    {
                        Title = "OK",
                        Callback = function()
            local ts = game:GetService("TeleportService")
            local p = game:GetService("Players").LocalPlayer
            ts:Teleport(game.PlaceId, p)            
end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Server:AddButton({
        Title = "Hop Server",
        Description = "Hop to random server",
        Callback = function()
            Window:Dialog({
                Title = "Hop Server",
                Content = "Do you want to use?",
                Buttons = {
                    {
                        Title = "OK",
                        Callback = function()
TeleportService = game:GetService("TeleportService")
HttpService = game:GetService("HttpService")
PlaceId, JobId = game.PlaceId, game.JobId
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
	if httprequest then
		httprequest({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = HttpService:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = HttpService:GenerateGUID(false),
				args = {code = 'dYHag43eeU'}
			})
		})
	end   
 if httprequest then
        local servers = {}
        local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", PlaceId)})
        local body = HttpService:JSONDecode(req.Body)

        if body and body.data then
            for i, v in next, body.data do
                if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
                    table.insert(servers, 1, v.id)
                end
            end
        end

        if #servers > 0 then
            TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
        else
            return notify("Serverhop", "Couldn't find a server.")
        end
    else
        notify("Incompatible Exploit", "Your exploit does not support this command (missing request)")
    end          
end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

   Tabs.Server:AddButton({
        Title = "Low-Server Hop",
        Description = "Hop to a fewer players server",
        Callback = function()
            Window:Dialog({
                Title = "Low-Server Hop",
                Content = "Do you want to use?",
                Buttons = {
                    {
                        Title = "OK",
                        Callback = function()
            local PlaceID = game.PlaceId
            local AllIDs = {}
            local foundAnything = ""
            local actualHour = os.date("!*t").hour
            local Deleted = false
            function TPReturner()
                local Site;
                if foundAnything == "" then
                    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                else
                    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                end
                local ID = ""
                if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                    foundAnything = Site.nextPageCursor
                end
                local num = 0;
                for i,v in pairs(Site.data) do
                    local Possible = true
                    ID = tostring(v.id)
                    if tonumber(v.maxPlayers) > tonumber(v.playing) then
                        for _,Existing in pairs(AllIDs) do
                            if num ~= 0 then
                                if ID == tostring(Existing) then
                                    Possible = false
                                end
                            else
                                if tonumber(actualHour) ~= tonumber(Existing) then
                                    local delFile = pcall(function()
                                        -- delfile("NotSameServers.json")
                                        AllIDs = {}
                                        table.insert(AllIDs, actualHour)
                                    end)
                                end
                            end
                            num = num + 1
                        end
                        if Possible == true then
                            table.insert(AllIDs, ID)
                            wait()
                            pcall(function()
                                -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                wait()
                                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                            end)
                            wait(.1)
                        end
                    end
                end
            end
            function Teleport() 
                while wait() do
                    pcall(function()
                        TPReturner()
                        if foundAnything ~= "" then
                            TPReturner()
                        end
                    end)
                end
            end
            Teleport()         
end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

local af1 = Tabs.Affinity:AddSection("Roll Affinity 1st Devil Fruit")

local Lucyfirst = Tabs.Affinity:AddSlider("Slider", {
    Title = "1st Devil Fruit Point",
    Description = "Choose the point of affinity",
    Default = 2,
    Min = 1,
    Max = 2,
    Rounding = 1,
    Callback = function(treotttt)
            _G.trqpwo = tonumber(treotttt)
        end
    })


     local wrrrrr = Tabs.Affinity:AddDropdown("MultiDropdown", {
        Title = "Lock Affinity (DF1)",
        Description = "You can choose affinities to lock.",
        Values = {"Defense", "Melee", "Sniper", "Sword"},
        Multi = true,
        Default = {""},
    })



    wrrrrr:OnChanged(function(Valuer)
        local Values = {"None"}
_G.keepdef = false
_G.keepmelee = false
_G.keepsnip = false
_G.keepsword = false
        for Valuer, State in next, Valuer do
            table.insert(Values, Valuer)
        end
			for _, n in pairs(Values) do
if string.find(n, "Defense") then
_G.keepdef = true
end
if string.find(n, "Melee") then
_G.keepmelee = true
end
if string.find(n, "Sniper") then
_G.keepsnip = true
end
if string.find(n, "Sword") then
_G.keepsword = true
end
			end
end)


    local wwwwww = Tabs.Affinity:AddDropdown("MultiDropdown", {
        Title = "Target Affinity (DF1)",
        Description = "You can choose the target affinity.",
        Values = {"Defense", "Melee", "Sniper", "Sword"},
        Multi = true,
        Default = {""},
    })

 
    wwwwww:OnChanged(function(Valuerr)
        local Valuess = {"None"}
_G.targetdef = false
_G.targetmelee = false
_G.targetsnip = false
_G.targetsword = false
        for Valuerr, State in next, Valuerr do
            table.insert(Valuess, Valuerr)
        end
			for _, q in pairs(Valuess) do
if string.find(q, "Defense") then
_G.targetdef = true
end
if string.find(q, "Melee") then
_G.targetmelee = true
end
if string.find(q, "Sniper") then
_G.targetsnip = true
end
if string.find(q, "Sword") then
_G.targetsword = true
end
			end
end)

local ret = Tabs.Affinity:AddDropdown("Dropdown", {
        Title = "Budget Type",
        Values = {"Cash", "Gems"},
        Multi = false,
        Default = "",
    })


    ret:OnChanged(function(Valuezx)
_G.budget = Valuezx
end)

local DF11Toggle = Tabs.Affinity:AddToggle("DF1Toggle", {Title = "Auto Roll Affinity (DF1)", Default = false })
    DF11Toggle:OnChanged(function(gg)


while Options.DF1Toggle.Value do wait()
pcall(function()
if Options.DF1Toggle.Value == true then
_G.quayfirstdf = true
else
_G.quayfirstdf = false
end
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
if _G.targetdef == true and _G.targetsnip == false and _G.targetmelee == false and _G.targetsword == false and workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < _G.trqpwo then
_G.defspin = true
else
_G.defspin = false
end
if _G.targetmelee == true and _G.targetdef == false and _G.targetsword == false and _G.targetsnip == false and workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < _G.trqpwo then
_G.meleespin = true
else
_G.meleespin = false
end
if _G.targetsnip == true and _G.targetdef == false and _G.targetmelee == false and _G.targetsword == false and workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < _G.trqpwo then
_G.sniperspin = true

else
_G.sniperspin = false
end
if _G.targetsword == true and _G.targetdef == false and _G.targetmelee == false and _G.targetsnip == false and workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < _G.trqpwo then
_G.swordspin = true

else
_G.swordspin = false
end
if _G.targetsword == false and _G.targetdef == true and _G.targetmelee == true and _G.targetsnip == false and workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < _G.trqpwo then
_G.defmeleespin = true

else
_G.defmeleespin = false
end
if _G.targetsword == false and _G.targetdef == true and _G.targetmelee == false and _G.targetsnip == true and workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < _G.trqpwo then
_G.defsnipspin = true
else
_G.defsnipspin = false

end
if _G.targetsword == true and _G.targetdef == true and _G.targetmelee == false and _G.targetsnip == false and workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < _G.trqpwo then
_G.defswordspin = true
else
_G.defswordspin = false
end
if _G.targetsword == false and _G.targetdef == false and _G.targetmelee == true and _G.targetsnip == true and workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < _G.trqpwo then
_G.meleesnipspin = true
else
_G.meleesnipspin = false
end
if _G.targetsword == true and _G.targetdef == false and _G.targetmelee == true and _G.targetsnip == false and workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < _G.trqpwo then
_G.meleeswordspin = true
else
_G.meleeswordspin = false
end
if _G.targetsword == true and _G.targetdef == false and _G.targetmelee == false and _G.targetsnip == true and workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < _G.trqpwo then
_G.swordsnipspin = true
else
_G.swordsnipspin = false
end
if _G.targetsword == false and _G.targetdef == true and _G.targetmelee == true and _G.targetsnip == true and workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < _G.trqpwo then
_G.defmeleesnipspin = true
else
_G.defmeleesnipspin = false
end
if _G.targetsword == true and _G.targetdef == true and _G.targetmelee == true and _G.targetsnip == false and workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < _G.trqpwo then
_G.defmeleeswordspin = true
else
_G.defmeleeswordspin = false
end
if _G.targetsword == true and _G.targetdef == false and _G.targetmelee == true and _G.targetsnip == true and workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < _G.trqpwo then
_G.meleesnipswordspin = true
else
_G.meleesnipswordspin = false
end
if _G.targetsword == true and _G.targetdef == true and _G.targetmelee == false and _G.targetsnip == true and workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < _G.trqpwo then
_G.defswordsnip = true
else
_G.defswordsnip = false
end
if _G.targetsword == true and _G.targetdef == true and _G.targetmelee == true and _G.targetsnip == true and workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < _G.trqpwo and workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < _G.trqpwo then
_G.allspin = true
else
_G.allspin = false
end

end)
end
end)

            spawn(function()
            while wait() do
                if _G.quayfirstdf then
                    pcall(function()
if _G.defswordsnip == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))

elseif _G.allspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))

elseif _G.meleesnipswordspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.defmeleeswordspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))

elseif _G.defmeleesnipspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))

elseif _G.swordsnipspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.meleeswordspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.meleesnipspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.defswordspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.defsnipspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.defmeleespin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.swordspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.sniperspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.meleespin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.defspin == true then
local args = {
    [1] = "DFT1",
    [2] = _G.keepdef,
    [3] = _G.keepmelee,
    [4] = _G.keepsnip,
    [5] = _G.keepsword,
    [6] = _G.budget
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
end
wait(12)
                    end)
                end
            end
            end)


local af2 = Tabs.Affinity:AddSection("Roll Affinity 2st Devil Fruit")

local Lucysecond = Tabs.Affinity:AddSlider("Slider", {
    Title = "2nd Devil Fruit Point",
    Description = "Choose the point of affinity",
    Default = 2,
    Min = 1,
    Max = 2,
    Rounding = 1,
    Callback = function(treot)
            _G.trqpwo2 = tonumber(treot)
        end
    })

     local wrrrrr2 = Tabs.Affinity:AddDropdown("MultiDropdown", {
        Title = "Lock Affinity (DF2)",
        Description = "You can choose affinities to lock.",
        Values = {"Defense", "Melee", "Sniper", "Sword"},
        Multi = true,
        Default = {""},
    })


    wrrrrr2:OnChanged(function(Valuer2)
        local Values2 = {"None"}
_G.keepdef2 = false
_G.keepmelee2 = false
_G.keepsnip2 = false
_G.keepsword2 = false
        for Valuer2, State in next, Valuer2 do
            table.insert(Values2, Valuer2)
        end
			for _, m in pairs(Values2) do
if string.find(m, "Defense") then
_G.keepdef2 = true
end
if string.find(m, "Melee") then
_G.keepmelee2 = true
end
if string.find(m, "Sniper") then
_G.keepsnip2 = true
end
if string.find(m, "Sword") then
_G.keepsword2 = true
end
			end
end)



    local wwrwwww2 = Tabs.Affinity:AddDropdown("MultiDropdown", {
        Title = "Target Affinity (DF2)",
        Description = "You can choose the target affinity.",
        Values = {"Defense", "Melee", "Sniper", "Sword"},
        Multi = true,
        Default = {""},
    })


    wwrwwww2:OnChanged(function(Valuerr2)
        local Valuess2 = {"None"}
_G.targetdef2 = false
_G.targetmelee2 = false
_G.targetsnip2 = false
_G.targetsword2 = false
        for Valuerr2, State in next, Valuerr2 do
            table.insert(Valuess2, Valuerr2)
        end
			for _, r in pairs(Valuess2) do
if string.find(r, "Defense") then
_G.targetdef2 = true
end
if string.find(r, "Melee") then
_G.targetmelee2 = true
end
if string.find(r, "Sniper") then
_G.targetsnip2 = true
end
if string.find(r, "Sword") then
_G.targetsword2 = true
end
			end
end)


local retw2 = Tabs.Affinity:AddDropdown("Dropdown", {
        Title = "Budget Type",
        Values = {"Cash", "Gems"},
        Multi = false,
        Default = "",
    })


    retw2:OnChanged(function(Valuezx2)
_G.budget2 = Valuezx2
end)

local DF22Toggle = Tabs.Affinity:AddToggle("DF2Toggle", {Title = "Auto Roll Affinity (DF2)", Default = false })
    DF22Toggle:OnChanged(function(tt)

while Options.DF2Toggle.Value do wait()
pcall(function()
if Options.DF2Toggle.Value == true then
_G.quayfirstdf2 = true
else
_G.quayfirstdf2 = false
end
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
if _G.targetdef2 == true and _G.targetsnip2 == false and _G.targetmelee2 == false and _G.targetsword2 == false and workspace.UserData["User_"..plrid].Data.DFT2Defense.Value < _G.trqpwo2 then
_G.defspin2 = true
else
_G.defspin2 = false
end
if _G.targetmelee2 == true and _G.targetdef2 == false and _G.targetsword2 == false and _G.targetsnip2 == false and workspace.UserData["User_"..plrid].Data.DFT2Melee.Value < _G.trqpwo2 then
_G.meleespin2 = true
else
_G.meleespin2 = false
end
if _G.targetsnip2 == true and _G.targetdef2 == false and _G.targetmelee2 == false and _G.targetsword2 == false and workspace.UserData["User_"..plrid].Data.DFT2Sniper.Value < _G.trqpwo2 then
_G.sniperspin2 = true

else
_G.sniperspin2 = false
end
if _G.targetsword2 == true and _G.targetdef2 == false and _G.targetmelee2 == false and _G.targetsnip2 == false and workspace.UserData["User_"..plrid].Data.DFT2Sword.Value < _G.trqpwo2 then
_G.swordspin2 = true

else
_G.swordspin2 = false
end
if _G.targetsword2 == false and _G.targetdef2 == true and _G.targetmelee2 == true and _G.targetsnip2 == false and workspace.UserData["User_"..plrid].Data.DFT2Defense.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Melee.Value < _G.trqpwo2 then
_G.defmeleespin2 = true

else
_G.defmeleespin2 = false
end
if _G.targetsword2 == false and _G.targetdef2 == true and _G.targetmelee2 == false and _G.targetsnip2 == true and workspace.UserData["User_"..plrid].Data.DFT2Defense.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Sniper.Value < _G.trqpwo2 then
_G.defsnipspin2 = true
else
_G.defsnipspin2 = false

end
if _G.targetsword2 == true and _G.targetdef2 == true and _G.targetmelee2 == false and _G.targetsnip2 == false and workspace.UserData["User_"..plrid].Data.DFT2Defense.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Sword.Value < _G.trqpwo2 then
_G.defswordspin2 = true
else
_G.defswordspin2 = false
end
if _G.targetsword2 == false and _G.targetdef2 == false and _G.targetmelee2 == true and _G.targetsnip2 == true and workspace.UserData["User_"..plrid].Data.DFT2Melee.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Sniper.Value < _G.trqpwo2 then
_G.meleesnipspin2 = true
else
_G.meleesnipspin2 = false
end
if _G.targetsword2 == true and _G.targetdef2 == false and _G.targetmelee2 == true and _G.targetsnip2 == false and workspace.UserData["User_"..plrid].Data.DFT2Melee.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Sword.Value < _G.trqpwo2 then
_G.meleeswordspin2 = true
else
_G.meleeswordspin2 = false
end
if _G.targetsword2 == true and _G.targetdef2 == false and _G.targetmelee2 == false and _G.targetsnip2 == true and workspace.UserData["User_"..plrid].Data.DFT2Sniper.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Sword.Value < _G.trqpwo2 then
_G.swordsnipspin2 = true
else
_G.swordsnipspin2 = false
end
if _G.targetsword2 == false and _G.targetdef2 == true and _G.targetmelee2 == true and _G.targetsnip2 == true and workspace.UserData["User_"..plrid].Data.DFT2Sniper.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Defense.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Melee.Value < _G.trqpwo2 then
_G.defmeleesnipspin2 = true
else
_G.defmeleesnipspin2 = false
end
if _G.targetsword2 == true and _G.targetdef2 == true and _G.targetmelee2 == true and _G.targetsnip2 == false and workspace.UserData["User_"..plrid].Data.DFT2Sword.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Defense.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Melee.Value < _G.trqpwo2 then
_G.defmeleeswordspin2 = true
else
_G.defmeleeswordspin2 = false
end
if _G.targetsword2 == true and _G.targetdef2 == false and _G.targetmelee2 == true and _G.targetsnip2 == true and workspace.UserData["User_"..plrid].Data.DFT2Sword.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Sniper.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Melee.Value < _G.trqpwo2 then
_G.meleesnipswordspin2 = true
else
_G.meleesnipswordspin2 = false
end
if _G.targetsword2 == true and _G.targetdef2 == true and _G.targetmelee2 == false and _G.targetsnip2 == true and workspace.UserData["User_"..plrid].Data.DFT2Sword.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Sniper.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Defense.Value < _G.trqpwo2 then
_G.defswordsnip2 = true
else
_G.defswordsnip2 = false
end
if _G.targetsword2 == true and _G.targetdef2 == true and _G.targetmelee2 == true and _G.targetsnip2 == true and workspace.UserData["User_"..plrid].Data.DFT2Sword.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Sniper.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Melee.Value < _G.trqpwo2 and workspace.UserData["User_"..plrid].Data.DFT2Defense.Value < _G.trqpwo2 then
_G.allspin2 = true
else
_G.allspin2 = false
end

end)
end
end)

            spawn(function()
            while wait() do
                if _G.quayfirstdf2 then
                    pcall(function()
if _G.defswordsnip2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))

elseif _G.allspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))

elseif _G.meleesnipswordspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.defmeleeswordspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))

elseif _G.defmeleesnipspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))

elseif _G.swordsnipspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.meleeswordspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.meleesnipspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.defswordspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.defsnipspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.defmeleespin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.swordspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.sniperspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.meleespin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif _G.defspin2 == true then
local args = {
    [1] = "DFT2",
    [2] = _G.keepdef2,
    [3] = _G.keepmelee2,
    [4] = _G.keepsnip2,
    [5] = _G.keepsword2,
    [6] = _G.budget2
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
end
wait(12)
                    end)
                end
            end
            end)

spawn(function()
	while wait() do
		if _G.quayfirstdf2 or _G.quayfirstdf then
                	pcall(function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
if game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_12"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge12")
end
			end)		
		end
	end
end)





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

local c1 = Tabs.Affinity:AddSection("                                                -----")
local c2 = Tabs.Affinity:AddSection("                                                -----")
local c3 = Tabs.Farm:AddSection("                                                -----")
local c4 = Tabs.Main:AddSection("                                                -----")
local c5 = Tabs.Main:AddSection("                                                -----")
local c6 = Tabs.Farm:AddSection("                                                -----")
local c7 = Tabs.Server:AddSection("                                                -----")
local c8 = Tabs.Server:AddSection("                                                -----")
local c9 = Tabs.Fruit:AddSection("                                                -----")
local c10 = Tabs.Fruit:AddSection("                                                -----")
local c11 = Tabs.Teleport:AddSection("                                                -----")
local c12 = Tabs.Teleport:AddSection("                                                -----")
local c13 = Tabs.Player:AddSection("                                                -----")
local c14 = Tabs.Player:AddSection("                                                -----")
local c15 = Tabs.Automatic:AddSection("                                                -----")
local c16 = Tabs.Automatic:AddSection("                                                -----")
local c17 = Tabs.Webhook:AddSection("                                                -----")
local c18 = Tabs.Webhook:AddSection("                                                -----")
local c19 = Tabs.Misc:AddSection("                                                -----")
local c20 = Tabs.Misc:AddSection("                                                -----")
local c21 = Tabs.Settings:AddSection("                                                -----")
local c22 = Tabs.Settings:AddSection("                                                -----")
local c23 = Tabs.Haki:AddSection("                                                -----")
local c24 = Tabs.Haki:AddSection("                                                -----")
local c25 = Tabs.Shop:AddSection("                                                -----")
local c26 = Tabs.Shop:AddSection("                                                -----")
local c27 = Tabs.PVP:AddSection("                                                -----")
local c28 = Tabs.PVP:AddSection("                                                -----")
local c29 = Tabs.Gems:AddSection("                                                -----")
local c30 = Tabs.Gems:AddSection("                                                -----")
local c31 = Tabs.Info:AddSection("                                                -----")
local c32 = Tabs.Info:AddSection("                                                -----")
local c33 = Tabs.Weapon:AddSection("                                                -----")
local c34 = Tabs.Weapon:AddSection("                                                -----")

Window:SelectTab(1)

Fluent:Notify({
    Title = "Saluna With Love ♥",
    Content = "Have a nice day!",
    Duration = 15
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
--------
local BBB = Instance.new("ScreenGui")
BBB.Name = "BBB"
BBB.Parent = game.CoreGui
local hideUI = Instance.new("TextButton")
hideUI.Name = "hideUI"
hideUI.Parent = BBB
hideUI.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
hideUI.ClipsDescendants = true
hideUI.Position = UDim2.new(0.005, 1, 0.155, 1)
hideUI.Size = UDim2.new(0.079, 0, 0.069, 0)
hideUI.AutoButtonColor = false
hideUI.TextWrapped = true
hideUI.TextScaled = true
hideUI.Font = Enum.Font.SourceSans
hideUI.Text = "HIDE/SHOW UI"
hideUI.TextColor3 = Color3.fromRGB(0, 0, 0)
hideUI.TextSize = 14
hideUI.MouseButton1Up:Connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,"LeftControl",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
wait(0.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"LeftControl",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
end)

else
game.Players.LocalPlayer:Kick("KICKED      SALUNA Notify: Your HWID Wasn't Whitelisted")
everyClipboard = toclipboard
function toClipboard(txt)
    if everyClipboard then
        everyClipboard(tostring(txt))
    end
end
toClipboard("https://discord.gg/ecpbhm8G3w")
end
end

while wait() do
_G.none = false
wait(1)
local security = loadstring(game:HttpGet('https://raw.githubusercontent.com/AdamFatherOfCreator/NOTFUN/main/whitelist'))()
wait(1)
        for _, vtt1 in pairs(security) do
local check = game:GetService("RbxAnalyticsService"):GetClientId()
            if check == vtt1 then
_G.none = true
end
        end
wait(1)
if _G.none == false then
game.Players.LocalPlayer:Kick("KICKED      SALUNA Notify: Your HWID Wasn't Whitelisted")
end
wait(10)
end
