print("AntiAfk Activated")
local VirtualUser=game:service'VirtualUser'
repeat
wait()
until game:GetService("Players").LocalPlayer ~= nil and game:GetService("Players").LocalPlayer.Idled ~= nil
game:GetService("Players").LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
_G.WhiteListed = true

if _G.WhiteListed then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iamcutehehe/UI_Interface/main/kavo"))()
local Window = Library.CreateLib("Saluna SCRIPT | OPL: ARNACHY | Version: D3", "Serpent", colors)
local Main = Window:NewTab("MAIN")
local Tab = Window:NewTab("SAM DUPE")
local Tab2 = Window:NewTab("DRINK/AFFINITY")
local Tab4 = Window:NewTab("GRAB/DROP TOOLS")
local Tab5 = Window:NewTab("FRUIT FARMING")
local Quest = Window:NewTab("QUEST")
local Tele = Window:NewTab("TELEPORT/CHECK")
local Tab6 = Window:NewTab("PLAYER KILL")
local Tab7 = Window:NewTab("SERVER")
local MainSection = Main:NewSection(" ┇ ABOUT FRUIT BOX ┇ ")
local MainSection2 = Main:NewSection(" ┇ RANDOM TELEPORT FOR ANTI CAMP ┇ ")
local MainSection3 = Main:NewSection(" ┇ ANTI STUFF ┇ ")
local KILLSection = Tab:NewSection(" ┇ DUPE SAM (DUPE ALL TOKEN YOU GOT) ┇ ")
local SamSection2 = Tab:NewSection(" ┇ DUPE SAM 2ND METHOD (NEED TOKEN) ┇ ")
local KILLSection2 = Tab:NewSection(" ┇ ADD SAM'S TOKEN (RESETSTATS, BE CAREFUL) ┇ ")
local DRINKSection = Tab2:NewSection(" ┇ DRINK DUPE ┇ ")
local AFFSection = Tab2:NewSection(" ┇ AFFINITIES DUPE ┇ ")
local AFFSection2 = Tab2:NewSection(" ┇ KEEP FOR AUTO SPIN ┇ ")
local AFFSection3 = Tab2:NewSection(" ┇ AUTO SPIN FIRST FRUIT AFFINITY ┇ ")
local AFFSection4 = Tab2:NewSection(" ┇ AUTO SPIN SECOND FRUIT AFFINITY ┇ ")
local GrabSection = Tab4:NewSection(" ┇ GRAB TOOLS ┇ ")
local DropSection = Tab4:NewSection(" ┇ DROP TOOLS ┇ ")
local FFarmSection = Tab5:NewSection(" ┇ LIGHT FARM (Click X To Active) ┇ ")
local FFarmSection2 = Tab5:NewSection(" ┇ QUAKE FARM ┇ ")
local QuestSection = Quest:NewSection(" ┇ EXPERTISE ┇ ")
local QuestSection2 = Quest:NewSection(" ┇ FISH QUEST ┇ ")
local QuestSection3 = Quest:NewSection(" ┇ CHALLENGES ┇ ")
local TeleSection = Tele:NewSection(" ┇ RAYLEIGH AND DARK ATLAR ┇ ")
local TeleSection2 = Tele:NewSection(" ┇ ISLAND TELEPORT ┇ ")
local SHAVESection = Tab6:NewSection(" ┇ KILL ALL PLAYER ┇ ")
local AboutSection = Tab6:NewSection(" ┇ ABOUT PLAYER ┇ ")
local CampSection = Tab6:NewSection(" ┇ CAMP METHOD┇ ")
local ServerSection = Tab7:NewSection(" ┇ ABOUT THE SERVER ┇ ")
local Settings = Window:NewTab("SETTINGS")
local SettingsSection2 = Settings:NewSection(" ┇ KEYBOARD ┇ ")
local SettingsSection = Settings:NewSection(" ┇ SETTINGS ┇ ")
local ColorSection = Settings:NewSection(" ┇ UI COLOR ┇ ")
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
local DEFAFF = false
local MELEEAFF = false
local SNIPAFF = false
local SWORDAFF = false
do  
    local safezonedestroysea =  game:GetService("Workspace"):FindFirstChild("SafeZoneUnderSeaPart")  
    if safezonedestroysea then 
    safezonedestroysea:Destroy() 
    end 
    end
    
    do  
    local safezonedestroyspace =  game:GetService("Workspace"):FindFirstChild("SafeZoneOuterSpacePart")  
    if safezonedestroyspace then 
    safezonedestroyspace:Destroy() 
    end 
    end
    do  
    local destroylightspot =  game:GetService("Workspace"):FindFirstChild("lightspotPart")  
    if destroylightspot then 
    destroylightspot:Destroy() 
    end 
    end
    local lightspot = Instance.new("Part",game.Workspace)
    lightspot.Name = "lightspotPart"
    lightspot.Size = Vector3.new(50,3,50)
    lightspot.CFrame = CFrame.new(100, 2998, 800)
    lightspot.Anchored = true
    
    local SafeZoneUnderSea = Instance.new("Part",game.Workspace)
    SafeZoneUnderSea.Name = "SafeZoneUnderSeaPart"
    SafeZoneUnderSea.Size = Vector3.new(200,3,200)
    SafeZoneUnderSea.Position = Vector3.new((math.random(-5000, 5000)), -491, (math.random(-5000, 5000)))
    SafeZoneUnderSea.Anchored = true
    
    local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-100000, 100000)), 10000, (math.random(-100000, 100000)))
    SafeZoneOuterSpace.Anchored = true

MainSection:NewToggle("Aura Notify",false, function(aura)
getgenv().aura2 = aura
while getgenv().aura2 do wait()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
pcall(function()
if game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_5"].Claim.AutoButtonColor == true then
    getgenv().autofindsam = false
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Active = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Text = "YOU OPENED AN AURA"
end
end)
end
end)
MainSection:NewToggle("Auto Find Golden Compass",false,function(gold)
            getgenv().autofindsam1 = gold
            while getgenv().autofindsam1 do wait(0.3)
                pcall(function()
if game.Players.LocalPlayer.Backpack:FindFirstChild("Golden Compass") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Golden Compass"])
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Golden Compass" then              
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.PoserGolden.Value)
end
local compass = game.Players.LocalPlayer.Character:FindFirstChild("Golden Compass")
if game.Players.LocalPlayer.Character:FindFirstChild("Golden Compass") then
compass:Activate()
end
end
end)
end
end)
MainSection:NewToggle("Auto Open Common/Uncommon Boxes", false, function(boxes)
        getgenv().uncommonopen = boxes
        while getgenv().uncommonopen do wait(0.1)
            pcall(function()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and string.find(v.Name, "ommon") then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
v:Activate()
                                        end
                                    end
            end)
    end
    end)
MainSection:NewToggle("Auto Open Rare/Ultra Boxes", false, function(boxes)
        getgenv().rareopen = boxes
        while getgenv().rareopen do wait(0.1)
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
MainSection2:NewToggle("Random Teleport",false,function(tprandom)
getgenv().bgtyhn = tprandom
while getgenv().bgtyhn do wait()
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new((math.random(-100000, 100000)), 10000, (math.random(-100000, 100000)))
end)
end
end)

MainSection3:NewToggle("Anti Effects (Some)",false,function(antieff)
        getgenv().antistun = antieff
        while getgenv().antistun do wait()
            pcall(function()
local plr = game.Players.LocalPlayer.Character
    repeat
plr.BurnMagmaOverTime.Value = true
plr.BurnOverTime.Value = true
plr.CandyTouched.Value = true
plr.Cheshire.Value = true
plr.ChillyPunched.Value = true
plr["DF_Disabled"].Value = false
plr.GasPoison.Value = true
plr.GasAirless.Value = true
plr.GravityCrushed.Value = true
plr.HeartStolen.Value = true
plr.Hobbied.Value = true
plr.HotBody.Value = true
plr.HypnosisOnCooldown.Value = true
plr.LoveStunned.Value = true
plr.Mored.Value = true
plr.Negative.Value = true
plr.OpeSevered.Value = true
plr.Returned.Value = true
plr.RumbleStun.Value = true
plr.SanguineVampiris.Value = true
plr.SnowTouched.Value = true
plr.Stringing.Value = true
plr.VenomDoT.Value = true
wait()
    until plr.Humanoid.Health == 0

end)
end
end)
MainSection3:NewToggle("Anti Water Damage",false,function(antiwater)
if antiwater == true then
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
    game.Workspace.UserData["User_"..Final].Data["DevilFruit"].Value = "None"
    game.Workspace.UserData["User_"..Final].Data["DevilFruit2"].Value = "None"
        
        else
            game.Workspace.UserData["User_"..Final].Data["DevilFruit"].Value = getgenv().firstfruit
    game.Workspace.UserData["User_"..Final].Data["DevilFruit2"].Value = getgenv().secondfruit
            
            end
        
        end)
QuestSection3:NewToggle("Auto Claim Challenges",false,function(challenge)
getgenv().claim = challenge
while getgenv().claim do wait()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
pcall(function()
if game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.DailyFrame.ScrollingFrame["Challenge_1"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Daily1")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.DailyFrame.ScrollingFrame["Challenge_2"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Daily2")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.DailyFrame.ScrollingFrame["Challenge_3"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Daily3")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.DailyFrame.ScrollingFrame["Challenge_4"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Daily4")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.WeeklyFrame.ScrollingFrame["Challenge_1"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Weekly1")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.WeeklyFrame.ScrollingFrame["Challenge_2"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Weekly2")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.WeeklyFrame.ScrollingFrame["Challenge_3"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Weekly3")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.MonthlyFrame.ScrollingFrame["Challenge_1"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Monthly1")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.MonthlyFrame.ScrollingFrame["Challenge_2"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Monthly2")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_1"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge1")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_2"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge2")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_3"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge3")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_4"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge4")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_6"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge6")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_7"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge7")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_8"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge8")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_9"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge9")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_10"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge10")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_11"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge11")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_12"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge12")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_13"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge13")
elseif game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_14"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge14")
end
end)
end
end)

TeleSection:NewButton("Rayleigh Teleport/Check","",function()
local emoi = game:GetService("Workspace").Merchants.QuestHakiMerchant.Clickable.Available.Value
    if emoi == true
    then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Merchants.QuestHakiMerchant.HumanoidRootPart.CFrame
        else
         game.StarterGui:SetCore("SendNotification", {
            Title = "Saluna Notify",
            Text = "Rayleigh haven't spawned yet.",
            Duration = 1
          })
    
        end
        end
    )
TeleSection:NewButton("Teleport To Dark Atlar","",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 0, 0)
end)

TeleSection2:NewButton("Teleport To Safe Place","",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
end)

TeleSection2:NewButton("Teleport To Safe Place (Under Sea)","",function()
game.Players.LocalPlayer.Character.Humanoid.Sit = true
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneUnderSeaPart"].CFrame * CFrame.new(0, 5, 0)
end)
TeleSection2:NewButton(
        "Cave Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-194.73799133301, 216.99996948242, -891.580078125)
        end
    )
TeleSection2:NewButton(
        "Sand/Windmill Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14.228896141052, 224.99993896484, 83.281211853027)
        end
    )
TeleSection2:NewButton(
        "Sam Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1285.3370361328, 216.99996948242, -1286.6235351562)
        end
    )
TeleSection2:NewButton(
        "Bar Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1570.5280761719, 253.99995422363, 2080.4025878906)
        end
    )
TeleSection2:NewButton(
        "Purple Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5232.1577148438, 390, -7718.2651367188)
        end
    )
TeleSection2:NewButton(
        "Boar Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1669.6044921875, 216.99995422363, -327.11395263672)
        end
    )
TeleSection2:NewButton(
        "Big Snow Mountain","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6251.4306640625, 485.99990844727, -1612.5649414062)
        end
    )
TeleSection2:NewButton(
        "Krizma Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1185.2060546875, 217.99995422363, 1433.3782958984)
        end
    )
TeleSection2:NewButton(
        "Snowy Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1863.0474853516, 221.99995422363, 3229.9750976562)
        end
    )
TeleSection2:NewButton(
        "Expertise Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(731.67883300781, 240.99995422363, 1219.0432128906)
        end
    )
TeleSection2:NewButton(
        "Black Mountain/Demon Cave Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2042.4484863281, 487.99990844727, -720.06433105469)
        end
    )
TeleSection2:NewButton(
        "Sand Castle","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980.16436767578, 223.99995422363, -3250.3930664062)
        end
    )
     TeleSection2:NewButton(
        "Marine Forts","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3133.8627929688, 275.79977416992, -3653.8217773438)
        end
    )
TeleSection2:NewButton(
        "Tree Island/Spiral Island/4-Tree Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5890.7607421875, 215.99995422363, -8.0128145217896)
        end
    )
TeleSection2:NewButton(
        "Stone Island/Rubbish Can Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2645.5473632812, 252.56103515625, 1018.7150268555)
        end
    )
TeleSection2:NewButton(
        "Race Track Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6370.9833984375, 258.60165405273, 3841.9099121094)
        end
    )
TeleSection2:NewButton(
        "Pyramid Island/Affinity Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(284.54959106445, 215.9998626709, 4954.384765625)
        end
    )
TeleSection2:NewButton(
        "Flail Island/Angry Bob Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1053.0499267578, 217, 3313.7302246094)
        end
    )
TeleSection2:NewButton(
        "Mansion Island/CHEF Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1747.6221923828, 217.99995422363, 835.576171875)
        end
    )
TeleSection2:NewButton(
        "Moon-shaped Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3159.7631835938, 216.99995422363, 1556.4099121094)
        end
    )
TeleSection2:NewButton(
        "Pursuer Island/Tornado Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4848.783203125, 569.99981689453, -7135.171875)
        end
    )
TeleSection2:NewButton(
        "Vokun's Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4671.2763671875, 216.99998474121, 4893.3154296875)
        end
    )
TeleSection2:NewButton(
        "Kaizu Island/New Island","",
        function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)
        end
    )
QuestSection:NewToggle("Auto Get Expertise",false,function(bool22)
getgenv().expertise = bool22
while getgenv().expertise do wait()
pcall(function()
workspace:WaitForChild("Merchants"):WaitForChild("ExpertiseMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
wait(1)
end)
end
end)
QuestSection:NewToggle("Auto Get Haki",false,function(bool122)
getgenv().haki = bool122
while getgenv().haki do wait()
pcall(function()
workspace:WaitForChild("Merchants"):WaitForChild("QuestHakiMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
wait(1)
end)
end
end)
QuestSection2:NewToggle("Auto Get Fish Quest",false,function(bool11)
getgenv().tre = bool11
while getgenv().tre do wait()
pcall(function()
workspace:WaitForChild("Merchants"):WaitForChild("QuestFishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
wait(1)
end)
end
end)
QuestSection2:NewToggle("Auto Do Fish Quest",false,function(bool00)
getgenv().tret = bool00
while getgenv().tret do wait()
pcall(function()
if game.Players.LocalPlayer.Backpack:FindFirstChild("Package") and not game.Players.LocalPlayer.Character:FindFirstChild("Package") then
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Package").Parent = game.Players.LocalPlayer.Character
                            elseif game.Players.LocalPlayer.Character:FindFirstChild("Package") then
 for _,v in pairs(game.Workspace.Merchants:GetChildren()) do
if string.find(v.Name, "Aff") or string.find(v.Name, "Drink") or string.find(v.Name, "Boat") or string.find(v.Name, "Emote") or string.find(v.Name, "Exp") or string.find(v.Name, "Fish") or string.find(v.Name, "Flail") or string.find(v.Name, "Krizma") or string.find(v.Name, "QuestFish") or string.find(v.Name, "QuestMe") or string.find(v.Name, "Sniper") or string.find(v.Name, "Sword") and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame + Vector3.new(1, 0, 0)
wait(0.2)
end
game.Players.LocalPlayer.Character.Package:Activate()
end
end
end)
end
end)
DropSection:NewButton("Drop All Compasses","Drop", function()
local plr = game.Players.LocalPlayer
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Compass" then
v.Parent = plr.Character
  end
end
local compass = plr.Character:FindFirstChild("Compass")
for i,v in pairs(plr.Character:GetChildren()) do
if v.Name == "Compass" then
v.Parent = workspace
  end
end
end)
KILLSection:NewDropdown("Dupe Sam (Choose Dupe Place)", "choose", {"Pursuer", "Kaizu", "Vokun"}, function(place)
if place == "Pursuer" then
repeat wait() until game:IsLoaded() 
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil
local plr = game.Players.LocalPlayer
local plr = game.Players.LocalPlayer
game:GetService("Workspace").UserData["User_"..plr.UserId].UpdateClothing_Extras:FireServer("A","\255",34)
wait(1)
if plr.PlayerGui.Load.Frame.Visible == true then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
       v:Fire()
   end
end
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4795, 570, -7047)
until plr.Backpack:FindFirstChild("Melee")
spawn(function()
for i = 1,99999999 do
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
wait(0.7)
end
end)
repeat task.wait()
until plr.Backpack:FindFirstChild("Compass")
spawn(function()
for i = 1,99999999 do
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Compass" then
v.Parent = plr.Character
  end
end
wait(0.5)
end
end)
repeat task.wait()
until plr.Character:FindFirstChild("Compass")
spawn(function()
for i = 1,99999999 do
local compass = plr.Character:FindFirstChild("Compass")
for i,v in pairs(plr.Character:GetChildren()) do
if v.Name == "Compass" then
v.Parent = workspace
  end
end
wait(0.5)
end
end)
local plr = game.Players.LocalPlayer
repeat task.wait()
until workspace.UserData["User_"..plr.UserId].Data.CompassTokens.Value == 0
wait(1)
game.Players.LocalPlayer:Kick("Rejoining  Please Wait...")
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end

if place == "Kaizu" then
repeat wait() until game:IsLoaded() 
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil
local plr = game.Players.LocalPlayer
local plr = game.Players.LocalPlayer
game:GetService("Workspace").UserData["User_"..plr.UserId].UpdateClothing_Extras:FireServer("A","\255",34)
wait(1)
if plr.PlayerGui.Load.Frame.Visible == true then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
       v:Fire()
   end
end
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1575.45, 219.26, 9939.64)
until plr.Backpack:FindFirstChild("Melee")
spawn(function()
for i = 1,99999999 do
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
wait(0.7)
end
end)
repeat task.wait()
until plr.Backpack:FindFirstChild("Compass")
spawn(function()
for i = 1,99999999 do
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Compass" then
v.Parent = plr.Character
  end
end
wait(0.5)
end
end)
repeat task.wait()
until plr.Character:FindFirstChild("Compass")
spawn(function()
for i = 1,99999999 do
local compass = plr.Character:FindFirstChild("Compass")
for i,v in pairs(plr.Character:GetChildren()) do
if v.Name == "Compass" then
v.Parent = workspace
  end
end
wait(0.5)
end
end)
local plr = game.Players.LocalPlayer
repeat task.wait()
until workspace.UserData["User_"..plr.UserId].Data.CompassTokens.Value == 0
wait(1)
game.Players.LocalPlayer:Kick("Rejoining  Please Wait...")
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end

if place == "Vokun" then
repeat wait() until game:IsLoaded() 
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil
local plr = game.Players.LocalPlayer
local plr = game.Players.LocalPlayer
game:GetService("Workspace").UserData["User_"..plr.UserId].UpdateClothing_Extras:FireServer("A","\255",34)
wait(1)
if plr.PlayerGui.Load.Frame.Visible == true then
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
       v:Fire()
   end
end
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4218.75, 529, 5564.12)
until plr.Backpack:FindFirstChild("Melee")
spawn(function()
for i = 1,99999999 do
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
wait(0.7)
end
end)
repeat task.wait()
until plr.Backpack:FindFirstChild("Compass")
spawn(function()
for i = 1,99999999 do
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Compass" then
v.Parent = plr.Character
  end
end
wait(0.5)
end
end)
repeat task.wait()
until plr.Character:FindFirstChild("Compass")
spawn(function()
for i = 1,99999999 do
local compass = plr.Character:FindFirstChild("Compass")
for i,v in pairs(plr.Character:GetChildren()) do
if v.Name == "Compass" then
v.Parent = workspace
  end
end
wait(0.5)
end
end)
local plr = game.Players.LocalPlayer
repeat task.wait()
until workspace.UserData["User_"..plr.UserId].Data.CompassTokens.Value == 0
wait(1)
game.Players.LocalPlayer:Kick("Rejoining  Please Wait...")
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end
end)

SamSection2:NewToggle("Auto Claim Sam (DUPE MODE)",false, function(samdd)
getgenv().start11 = samdd
local plr = game.Players.LocalPlayer
game:GetService("Workspace").UserData["User_"..plr.UserId].UpdateClothing_Extras:FireServer("A","\255",34)
while getgenv().start11 do wait(0.3)
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
end
end)
SamSection2:NewToggle("Auto Find Compass",false,function(bool)
            getgenv().autofindsam = bool
            while getgenv().autofindsam do task.wait(0.5)
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
    end
    end)
SamSection2:NewButton("Reload The Token (Rejoin)","Rejoin",function()
game.Players.LocalPlayer:Kick("Rejoining  Please Wait...")
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)
KILLSection:NewDropdown("Teleport To Dupe Place (Choose)", "teleport", {"Pursuer", "Kaizu", "Vokun"}, function(tpdupe)
if tpdupe == "Pursuer" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4795, 570, -7047)
end
if tpdupe == "Kaizu" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1575.45, 219.26, 9939.64)
end
if tpdupe == "Vokun" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4218.75, 529, 5564.12)
end
end)
KILLSection:NewToggle("Auto Find Compass",false,function(bool)
            getgenv().autofindsam = bool
            while getgenv().autofindsam do wait(0.3)
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
    end
    end)
KILLSection:NewButton("Compasses Quest","Open SAM GUI", function()
for i,v in pairs(game:GetService("Workspace").Merchants.QuestMerchant:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end)
KILLSection2:NewToggle("Auto Token (needs sam in inventory)",false, function(token)
getgenv().start = token
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().start do wait(0.3)
if game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.WeeklyFrame.ScrollingFrame["Challenge_3"].Claim.AutoButtonColor == true then
workspace.UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote:FireServer("Claim","Weekly3")

elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Compass"])
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "Compass" then
            if not workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.QQQ_Weekly3.Value == true then
local args = {[1] = "Claim",[2] = "Weekly3"}workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("ChallengesRemote"):FireServer(unpack(args))
else
workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("Stats"):FireServer()
end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Poser.Value)
                if game.Players.LocalPlayer.Character:FindFirstChild("Compass") then
                game.Players.LocalPlayer.Character.Compass:Activate()
                end
            else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1296, 218, -1350)
            local args = {[1] = "Claim",[2] = "Weekly3"}workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("ChallengesRemote"):FireServer(unpack(args))
end
end
end
end)

DropSection:NewButton("Drop Common Box","nil", function()
local plr = game.Players.LocalPlayer
for i,v in pairs(plr.Backpack:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name, "Common Box") then
			v.Parent = plr.Character
		end
	end
	wait()
	for i,v in pairs(plr.Character:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name, "Common Box") then
			v.Parent = workspace
		end
	end
end)
DropSection:NewButton("Drop Uncommon Box","nil", function()
local plr = game.Players.LocalPlayer
for i,v in pairs(plr.Backpack:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name, "Uncommon Box") then
			v.Parent = plr.Character
		end
	end
	wait()
	for i,v in pairs(plr.Character:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name, "Uncommon Box") then
			v.Parent = workspace
		end
	end
end)
DropSection:NewButton("Drop Rare Box","nil", function()
local plr = game.Players.LocalPlayer
for i,v in pairs(plr.Backpack:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name, "Rare Box") then
			v.Parent = plr.Character
		end
	end
	wait()
	for i,v in pairs(plr.Character:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name, "Rare Box") then
			v.Parent = workspace
		end
	end
end)
DropSection:NewButton("Drop Ultra Rare Box","nil", function()
local plr = game.Players.LocalPlayer
for i,v in pairs(plr.Backpack:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name, "Ultra Rare Box") then
			v.Parent = plr.Character
		end
	end
	wait()
	for i,v in pairs(plr.Character:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name, "Ultra Rare Box") then
			v.Parent = workspace
		end
	end
end)
DRINKSection:NewButton("Dupe Mode (Turn On Before Duping)","Turn On Before Dupe", function()
local plr = game.Players.LocalPlayer
game:GetService("Workspace").UserData["User_"..plr.UserId].UpdateClothing_Extras:FireServer("A","\255",34)
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Active = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Text = "DUPE MODE: TURNED ON"
end)
DRINKSection:NewDropdown("The Drink", "Buys chosen drinks", {"Cider+", "Lemonade+", "Juice+", "Smoothie+"}, function(An)
getgenv().selectdrink = An
end)
DRINKSection:NewTextBox("Drink Amount", "Makes you buy drinks", function(amount)
          getgenv().amountdrink = amount

end)
DRINKSection:NewButton("Buy Drink","Buy",function()
local buydrink = getgenv().selectdrink
            local amountdrinkbuy = getgenv().amountdrink
            if buydrink == "Cider+" then
    for i = 1,amountdrink do
    local args = {
        [1] = "Cider+"
    }
    
    workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(unpack(args))
    end
    elseif buydrink == "Lemonade+" then
        
    for i = 1,amountdrink do
    local args = {
        [1] = "Lemonade+"
    }
    
    workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(unpack(args))
    end
            elseif buydrink == "Juice+" then
    for i = 1,amountdrink do
    local args = {
        [1] = "Juice+"
    }
    
    workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(unpack(args))
    end
    elseif buydrink == "Smoothie+" then
        for i = 1,amountdrink do
    
    local args = {
        [1] = "Smoothie+"
    }
    
    workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(unpack(args))
    end
        end
        end)
DRINKSection:NewToggle("Auto Drink",false,function(poola)
        getgenv().autodrinkmixer = poola
        while getgenv().autodrinkmixer do wait(3)
            pcall(function()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and string.find(v.Name, "Juice") or string.find(v.Name, "Milk") or string.find(v.Name, "Cider") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Smoothie") or string.find(v.Name, "Golden") then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
v:Activate()
                                        end
                                    end
            end)
    end
    end)
DRINKSection:NewButton("Drop Drink","Drop Drink", function()
local plr = game.Players.LocalPlayer
for i,v in pairs(plr.Backpack:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name, "Juice") or string.find(v.Name, "Milk") or string.find(v.Name, "Cider") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Smoothie") then
			v.Parent = plr.Character
		end
	end
	wait()
	for i,v in pairs(plr.Character:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name, "Juice") or string.find(v.Name, "Milk") or string.find(v.Name, "Cider") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Smoothie") then
			v.Parent = workspace
		end
	end
	end)
DRINKSection:NewButton("Reload The Beries (Rejoin)","Rejoin",function()
game.Players.LocalPlayer:Kick("Rejoining  Please Wait...")
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)
AFFSection:NewButton("Dupe Mode (Turn On Before Duping)","Turn On Before Dupe", function()
local plr = game.Players.LocalPlayer
game:GetService("Workspace").UserData["User_"..plr.UserId].UpdateClothing_Extras:FireServer("A","\255",34)
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Active = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Text = "DUPE MODE: TURNED ON"
end)
AFFSection:NewButton("Affinities GUI", "Open Lucy GUI", function()
for i,v in pairs(game:GetService("Workspace").Merchants.AffinityMerchant:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end)
AFFSection:NewButton("Save Affinities","Save Affinities", function()
local plr = game.Players.LocalPlayer
game:GetService("Workspace").UserData["User_"..plr.UserId].UpdateClothing_Extras:FireServer("A","None",34)
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Active = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.Announcement.Frame.TextLabel.Text = "SAVED DATA"
end)
AFFSection:NewButton("Reload The Beries (Rejoin)","Rejoin",function()
game.Players.LocalPlayer:Kick("Rejoining  Please Wait...")
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)
AFFSection2:NewToggle("KEEP DEFENSE AFF",false,function(defense)
DEFAFF = defense
end)
AFFSection2:NewToggle("KEEP MELEE AFF",false,function(melee)
MELEEAFF = melee
end)

AFFSection2:NewToggle("KEEP SNIPER AFF",false,function(snip)
SNIPAFF = snip
end)

AFFSection2:NewToggle("KEEP SWORD AFF",false,function(sword)
SWORDAFF = sword
end)
AFFSection2:NewToggle("Auto Rejoin If Run Out Beries",false,function(beli)
getgenv().belirj = beli
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().belirj do wait(1)
pcall(function()
if workspace.UserData["User_"..plrid].Data.Cash.Value < 100000 then
game.Players.LocalPlayer:Kick("Rejoining  Please Wait...")
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end
end)
end
end)
AFFSection3:NewToggle("Auto Spin Lucy (Target ALL)",false,function(deftar)
getgenv().lucy1 = deftar
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy1 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or  workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy1 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value <1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy1 = false
end
end)
end
end)
AFFSection3:NewToggle("Auto Spin Lucy (Target Melee Snip Sw)",false,function(deftar11)
getgenv().lucy4 = deftar11
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy4 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy4 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy4 = false
end
end)
end
end)
AFFSection3:NewToggle("Auto Spin Lucy (Target Def Snip Sw)",false,function(deftar21)
getgenv().lucy5 = deftar21
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy5 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy5 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy5 = false
end
end)
end
end)
AFFSection3:NewToggle("Auto Spin Lucy (Target Def Melee Sw)",false,function(deftar31)
getgenv().lucy6 = deftar31
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy6 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy6 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy6 = false
end
end)
end
end)
AFFSection3:NewToggle("Auto Spin Lucy (Target Def Melee Snip)",false,function(deftar41)
getgenv().lucy7 = deftar41
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy7 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 then
getgenv().lucy7 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 then
getgenv().lucy7 = false
end
end)
end
end)

AFFSection3:NewToggle("Auto Spin Lucy (Target Def Melee)",false,function(deftar22)
getgenv().lucy8 = deftar22
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy8 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 then
getgenv().lucy8 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 then
getgenv().lucy8 = false
end
end)
end
end)

AFFSection3:NewToggle("Auto Spin Lucy (Target Def Snip)",false,function(deftar23)
getgenv().lucy9 = deftar23
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy9 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 then
getgenv().lucy9 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 then
getgenv().lucy9 = false
end
end)
end
end)

AFFSection3:NewToggle("Auto Spin Lucy (Target Def Sw)",false,function(deftar24)
getgenv().lucy19 = deftar24
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy19 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy19 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy19 = false
end
end)
end
end)

AFFSection3:NewToggle("Auto Spin Lucy (Target Melee Snip)",false,function(deftar25)
getgenv().lucy29 = deftar25
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy29 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 then
getgenv().lucy29 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 then
getgenv().lucy29 = false
end
end)
end
end)

AFFSection3:NewToggle("Auto Spin Lucy (Target Melee Sword)",false,function(deftar26)
getgenv().lucy30 = deftar26
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy30 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy30 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Melee.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy30 = false
end
end)
end
end)

AFFSection3:NewToggle("Auto Spin Lucy (Target Sword Snip)",false,function(deftar27)
getgenv().lucy31 = deftar27
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy31 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy31 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value < 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value < 1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 or workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy31 = false
end
end)
end
end)
AFFSection3:NewToggle("Auto Spin Lucy (Target Defense Only)",false,function(deftar)
getgenv().lucy1 = deftar
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy1 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 then
getgenv().lucy1 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value <1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Defense.Value >= 1.9 then
getgenv().lucy1 = false
end
end)
end
end)
AFFSection3:NewToggle("Auto Spin Lucy (Target Melee Only)",false,function(meleetar)
getgenv().lucy2 = meleetar
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy2 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 then
getgenv().lucy2 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Melee.Value <1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Melee.Value >= 1.9 then
getgenv().lucy2 = false
end
end)
end
end)

AFFSection3:NewToggle("Auto Spin Lucy (Target Sniper Only)",false,function(sniptar)
getgenv().lucy3 = sniptar
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy3 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 then
getgenv().lucy3 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value <1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Sniper.Value >= 1.9 then
getgenv().lucy3 = false
end
end)
end
end)

AFFSection3:NewToggle("Auto Spin Lucy (Target Sword Only)",false,function(swordtar)
getgenv().lucy4 = swordtar
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while getgenv().lucy4 do wait(9)
pcall(function()
if workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy4 = false
elseif workspace.UserData["User_"..plrid].Data.DFT1Sword.Value <1.9 then
local args = {
    [1] = "DFT1",
    [2] = DEFAFF,
    [3] = MELEEAFF,
    [4] = SNIPAFF,
    [5] = SWORDAFF,
    [6] = "Cash"
}

workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
elseif workspace.UserData["User_"..plrid].Data.DFT1Sword.Value >= 1.9 then
getgenv().lucy4 = false
end
end)
end
end)
GrabSection:NewToggle("Grab Compass",false, function(tpmodelight)
getgenv().lightttt = tpmodelight
while getgenv().lightttt do wait()
pcall(function()
local humanoid = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
	for _, child in ipairs(workspace:GetChildren()) do
		if game.Players.LocalPlayer.Character and child:IsA("BackpackItem") and string.find(child.Name, "Compass")  and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
			wait()
		end
		end
	end)
	end
	end)
	
GrabSection:NewToggle("Grab All Box",false, function(tpmodelight)
getgenv().lightttt = tpmodelight
while getgenv().lightttt do wait()
pcall(function()
local humanoid = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
	for _, child in ipairs(workspace:GetChildren()) do
		if game.Players.LocalPlayer.Character and child:IsA("BackpackItem") and string.find(child.Name, "Box")  and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
			wait()
		end
		end
	end)
	end
	end)
GrabSection:NewToggle("Grab Rare/Ultra Box",false, function(tpmodelight)
getgenv().lightttt = tpmodelight
while getgenv().lightttt do wait()
pcall(function()
local humanoid = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
	for _, child in ipairs(workspace:GetChildren()) do
		if game.Players.LocalPlayer.Character and child:IsA("BackpackItem") and string.find(child.Name, "Rare")  and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
			wait()
		end
		end
	end)
	end
	end)
GrabSection:NewToggle("Grab Drinks",false, function(tpmodelight)
getgenv().lightttt = tpmodelight
while getgenv().lightttt do wait()
pcall(function()
local humanoid = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
	for _, child in ipairs(workspace:GetChildren()) do
		if game.Players.LocalPlayer.Character and child:IsA("BackpackItem") and string.find(child.Name, "Juice") or string.find(child.Name, "Milk") or string.find(child.Name, "Cider") or string.find(child.Name, "Lemonade") or string.find(child.Name, "Smoothie")  and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
			wait()
		end
		end
	end)
	end
	end)
GrabSection:NewToggle("Grab Devil Fruit",false, function(grabfruit)
getgenv().gfhh = grabfruit
while getgenv().gfhh do wait()
pcall(function()
 for i,v in pairs(game:GetService("Workspace").Trees.Tree:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
wait()
end
end
end)
end
end)

FFarmSection:NewToggle("Light Farm" , false, function(farmlight)  --Light
getgenv().farmlight1 = farmlight
 while getgenv().farmlight1 do wait()
pcall(function()
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Light)
local v = x.VTCrv
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-988.4560546875, 283, 1616.5068359375), Vector3.new(-0.44781866669654846, -0.36267393827438354, 0.8172675371170044)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1037.58544921875, 215.7229461669922, 1508.449951171875), Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-908.2176513671875, 214, 1621.364990234375), Vector3.new(-0.21460314095020294, -0.40479180216789246, 0.88886958360672)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-248.8604736328125, 273.4266052246094, 355.64453125), Vector3.new(0.6645273566246033, -0.5016912817955017, -0.5538134574890137)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-319.3795471191406, 272.3931884765625, 388.7362060546875), Vector3.new(0.5347911715507507, -0.7442643046379089, -0.40008631348609924)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-315.74334716796875, 270.4518737792969, 307.21185302734375), Vector3.new(0.4924789369106293, -0.6783868670463562, -0.5452118515968323)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-178.00997924804688, 272.4919128417969, 390.1238708496094), Vector3.new(0.6851771473884583, -0.678036093711853, -0.26608139276504517)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-159.9521026611328, 269.81768798828125, 312.1455993652344), Vector3.new(0.6065837144851685, -0.7200759649276733, -0.33696722984313965)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(89.97474670410156, 299.3000183105469, -936.1035766601562), Vector3.new(0.2870140075683594, -0.6174480319023132, -0.7323803305625916)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1169.5670166015625, 219.90908813476562, -1588.0274658203125), Vector3.new(0.015137090347707272, -0.6970996260643005, -0.7168144583702087)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1201.4923095703125, 254.11367797851562, -1660.2674560546875), Vector3.new(0.04675392061471939, -0.6955714225769043, -0.7169341444969177)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1288.0887451171875, 245.90695190429688, -1653.00537109375), Vector3.new(0.025024037808179855, -0.7537118196487427, -0.6567284464836121)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1339.789306640625, 245.81817626953125, -1634.641845703125), Vector3.new(0.07458476722240448, -0.6587507128715515, -0.7486552596092224)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1432.3958740234375, 256.3514709472656, -1652.33984375), Vector3.new(0.007446270436048508, -0.6148971319198608, -0.7885722517967224)),workspace.IslandCaver.Stones.Stone, 100)
wait()
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1270.039794921875, 263.09088134765625, -1793.016357421875), Vector3.new(0.32165566086769104, -0.4306340515613556, -0.8432627320289612)),workspace.IslandCaver.Stones.Stone, 100)
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(1006.49609, 214, 3343.88672, -0.658374071, 0.456948608, -0.598114967, 1.49011612e-08, 0.794635653, 0.607086658, 0.752690911, 0.399690121, -0.523167491),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(63.7783852, 224.092834, -22.6948109, 0.880218983, -0.199063435, 0.430799752, -0, 0.907772779, 0.419462502, -0.47456789, -0.369218856, 0.799038708),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(78.0910568, 224.257538, -250.038528, -0.929546118, 0.140650496, -0.340824872, 7.4505806e-09, 0.924381137, 0.381470531, 0.368706048, 0.354594439, -0.859254777),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-83.3654709, 213.507431, -291.45694, -0.803052127, 0.286845595, -0.522328377, -1.49011647e-08, 0.876523972, 0.481358171, 0.59590888, 0.386555701, -0.703894377),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-361.610687, 226.601395, -483.790314, -0.127329662, -0.748218894, 0.651118755, -7.4505806e-09, 0.656462073, 0.754359066, -0.991860449, 0.0960522816, -0.0835870951),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-417.081055, 215.650604, -199.940262, -0.999979317, 0.00165595487, -0.00622563809, -0, 0.966397822, 0.257051706, 0.00644210819, 0.257046402, -0.966377676),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(1189.82031, 209.504807, -253.076477, -0.0244355015, 0.911407471, -0.410779238, -9.31322575e-10, 0.410901964, 0.911679626, 0.9997015, 0.0222773496, -0.0100405924),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(997.100281, 221.200043, -3273.66992, -0.999911904, 0.00796189532, -0.0106200371, 4.65661287e-10, 0.80011332, 0.599848986, 0.0132731665, 0.599796116, -0.800042808),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(1135.32324, 221.200058, -3279.3938, -0.962248683, 0.192036361, -0.192872062, -1.49011612e-08, 0.708640337, 0.705569923, 0.272172004, 0.67893374, -0.681888163),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(1069.11377, 221.200027, -3392.5415, -0.242442578, 0.617383361, -0.748371243, -0, 0.771385014, 0.636368871, 0.970165849, 0.154282913, -0.187016517),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(1119.41455, 221, -3377.73682, -0.973147631, 0.127094254, -0.191913262, -7.45057971e-09, 0.833746493, 0.552147388, 0.230181754, 0.537320912, -0.811358511),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1848.74072, 222, -445.570709, -0.737809598, -0.349238694, 0.577641249, -0, 0.855753541, 0.517383814, -0.675008953, 0.381730735, -0.631383121),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1934.89453, 222.827698, -287.688354, -0.201752827, 0.466540843, -0.86118263, 7.45058149e-09, 0.87926352, 0.476335943, 0.979436576, 0.0961021185, -0.177393854),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1902.58936, 225.020691, -200.327271, 0.482329607, 0.390431523, -0.784169197, 1.49011612e-08, 0.895180702, 0.445703268, 0.875989795, -0.214975893, 0.431772202),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(219.922928, 216.962555, 5.62356806, 0.7696684, -0.491379827, 0.407622814, -0, 0.63846314, 0.769652426, -0.638443828, -0.592377126, 0.491404891),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1750.64819, 226.240067, -135.158188, 0.741380215, -0.609925508, 0.279904127, -0, 0.417091757, 0.908864439, -0.671085238, -0.673814118, 0.309223562),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1622.35095, 225.656448, -196.633286, 0.243688434, -0.768282771, 0.591910183, -0, 0.610308826, 0.79216361, -0.96985364, -0.193041116, 0.148725212),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1011.52802, 325.579163, 1688.44336, 0.0565236248, -0.625209868, 0.778407216, -1.86264515e-09, 0.779653728, 0.626210988, -0.998401344, -0.0353957154, 0.0440688469),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait()
end)
end
end)

FFarmSection:NewToggle("Light Fast Farm (May Be Lag)" , false, function(farmmlight)  --Light
getgenv().farmlight2 = farmmlight
 while getgenv().farmlight2 do wait()
pcall(function()
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Light)
local v = x.VTCrv
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-988.4560546875, 283, 1616.5068359375), Vector3.new(-0.44781866669654846, -0.36267393827438354, 0.8172675371170044)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1037.58544921875, 215.7229461669922, 1508.449951171875), Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-908.2176513671875, 214, 1621.364990234375), Vector3.new(-0.21460314095020294, -0.40479180216789246, 0.88886958360672)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-248.8604736328125, 273.4266052246094, 355.64453125), Vector3.new(0.6645273566246033, -0.5016912817955017, -0.5538134574890137)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-319.3795471191406, 272.3931884765625, 388.7362060546875), Vector3.new(0.5347911715507507, -0.7442643046379089, -0.40008631348609924)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-315.74334716796875, 270.4518737792969, 307.21185302734375), Vector3.new(0.4924789369106293, -0.6783868670463562, -0.5452118515968323)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-178.00997924804688, 272.4919128417969, 390.1238708496094), Vector3.new(0.6851771473884583, -0.678036093711853, -0.26608139276504517)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-159.9521026611328, 269.81768798828125, 312.1455993652344), Vector3.new(0.6065837144851685, -0.7200759649276733, -0.33696722984313965)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(89.97474670410156, 299.3000183105469, -936.1035766601562), Vector3.new(0.2870140075683594, -0.6174480319023132, -0.7323803305625916)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1169.5670166015625, 219.90908813476562, -1588.0274658203125), Vector3.new(0.015137090347707272, -0.6970996260643005, -0.7168144583702087)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1201.4923095703125, 254.11367797851562, -1660.2674560546875), Vector3.new(0.04675392061471939, -0.6955714225769043, -0.7169341444969177)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1288.0887451171875, 245.90695190429688, -1653.00537109375), Vector3.new(0.025024037808179855, -0.7537118196487427, -0.6567284464836121)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1339.789306640625, 245.81817626953125, -1634.641845703125), Vector3.new(0.07458476722240448, -0.6587507128715515, -0.7486552596092224)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1432.3958740234375, 256.3514709472656, -1652.33984375), Vector3.new(0.007446270436048508, -0.6148971319198608, -0.7885722517967224)),workspace.IslandCaver.Stones.Stone, 100)

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1270.039794921875, 263.09088134765625, -1793.016357421875), Vector3.new(0.32165566086769104, -0.4306340515613556, -0.8432627320289612)),workspace.IslandCaver.Stones.Stone, 100)

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(1006.49609, 214, 3343.88672, -0.658374071, 0.456948608, -0.598114967, 1.49011612e-08, 0.794635653, 0.607086658, 0.752690911, 0.399690121, -0.523167491),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(63.7783852, 224.092834, -22.6948109, 0.880218983, -0.199063435, 0.430799752, -0, 0.907772779, 0.419462502, -0.47456789, -0.369218856, 0.799038708),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(78.0910568, 224.257538, -250.038528, -0.929546118, 0.140650496, -0.340824872, 7.4505806e-09, 0.924381137, 0.381470531, 0.368706048, 0.354594439, -0.859254777),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-83.3654709, 213.507431, -291.45694, -0.803052127, 0.286845595, -0.522328377, -1.49011647e-08, 0.876523972, 0.481358171, 0.59590888, 0.386555701, -0.703894377),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-361.610687, 226.601395, -483.790314, -0.127329662, -0.748218894, 0.651118755, -7.4505806e-09, 0.656462073, 0.754359066, -0.991860449, 0.0960522816, -0.0835870951),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-417.081055, 215.650604, -199.940262, -0.999979317, 0.00165595487, -0.00622563809, -0, 0.966397822, 0.257051706, 0.00644210819, 0.257046402, -0.966377676),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(1189.82031, 209.504807, -253.076477, -0.0244355015, 0.911407471, -0.410779238, -9.31322575e-10, 0.410901964, 0.911679626, 0.9997015, 0.0222773496, -0.0100405924),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(997.100281, 221.200043, -3273.66992, -0.999911904, 0.00796189532, -0.0106200371, 4.65661287e-10, 0.80011332, 0.599848986, 0.0132731665, 0.599796116, -0.800042808),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(1135.32324, 221.200058, -3279.3938, -0.962248683, 0.192036361, -0.192872062, -1.49011612e-08, 0.708640337, 0.705569923, 0.272172004, 0.67893374, -0.681888163),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(1069.11377, 221.200027, -3392.5415, -0.242442578, 0.617383361, -0.748371243, -0, 0.771385014, 0.636368871, 0.970165849, 0.154282913, -0.187016517),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(1119.41455, 221, -3377.73682, -0.973147631, 0.127094254, -0.191913262, -7.45057971e-09, 0.833746493, 0.552147388, 0.230181754, 0.537320912, -0.811358511),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1848.74072, 222, -445.570709, -0.737809598, -0.349238694, 0.577641249, -0, 0.855753541, 0.517383814, -0.675008953, 0.381730735, -0.631383121),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1934.89453, 222.827698, -287.688354, -0.201752827, 0.466540843, -0.86118263, 7.45058149e-09, 0.87926352, 0.476335943, 0.979436576, 0.0961021185, -0.177393854),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1902.58936, 225.020691, -200.327271, 0.482329607, 0.390431523, -0.784169197, 1.49011612e-08, 0.895180702, 0.445703268, 0.875989795, -0.214975893, 0.431772202),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(219.922928, 216.962555, 5.62356806, 0.7696684, -0.491379827, 0.407622814, -0, 0.63846314, 0.769652426, -0.638443828, -0.592377126, 0.491404891),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1750.64819, 226.240067, -135.158188, 0.741380215, -0.609925508, 0.279904127, -0, 0.417091757, 0.908864439, -0.671085238, -0.673814118, 0.309223562),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1622.35095, 225.656448, -196.633286, 0.243688434, -0.768282771, 0.591910183, -0, 0.610308826, 0.79216361, -0.96985364, -0.193041116, 0.148725212),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = v,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = CFrame.new(-1011.52802, 325.579163, 1688.44336, 0.0565236248, -0.625209868, 0.778407216, -1.86264515e-09, 0.779653728, 0.626210988, -0.998401344, -0.0353957154, 0.0440688469),
    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait(0.4)
end)
end
end)
FFarmSection:NewButton("Teleport To Farm Spot","nil", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 3000, 800)
end)
FFarmSection:NewToggle("Auto Teleport To Farm Spot",false, function(lightvm)
getgenv().sert = lightvm
while getgenv().sert do wait()
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 3000, 800)
wait()
end)
end
end)
FFarmSection2:NewToggle("Quake Farm" , false, function(quakefarm)  --Quake
getgenv().quakefarm1 = quakefarm
        while getgenv().quakefarm1 do wait()
    pcall(function()
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Quake)
local v = x.VTCebvc
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1848.4346923828125, 222, -450.0833740234375), Vector3.new(-0.5347824096679688, -0.43560168147087097, -0.7240573167800903)),100,Vector3.new(-1848.4346923828125, 222, -450.0833740234375), Vector3.new(-0.5347824096679688, -0.43560168147087097, -0.7240573167800903))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1898.96728515625, 225.03367614746094, -200.6829071044922), Vector3.new(-0.9484627842903137, -0.18392488360404968, 0.25805023312568665)),100,Vector3.new(-1898.96728515625, 225.03367614746094, -200.6829071044922), Vector3.new(-0.9484627842903137, -0.18392488360404968, 0.25805023312568665))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1749.58203125, 224.88922119140625, -134.49240112304688), Vector3.new(-0.6882264614105225, -0.40487319231033325, 0.6020150184631348)),100,Vector3.new(-1749.58203125, 224.88922119140625, -134.49240112304688), Vector3.new(-0.6882264614105225, -0.40487319231033325, 0.6020150184631348))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1622.5482177734375, 225.85337829589844, -200.26828002929688), Vector3.new(-0.3189719319343567, -0.7127735018730164, 0.6246685981750488)),100,Vector3.new(-1622.5482177734375, 225.85337829589844, -200.26828002929688), Vector3.new(-0.3189719319343567, -0.7127735018730164, 0.6246685981750488))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(1002.1565551757812, 214, 3349.3857421875), Vector3.new(-0.2978745698928833, -0.6442758440971375, 0.7044001221656799)),100,Vector3.new(1002.1565551757812, 214, 3349.3857421875), Vector3.new(-0.2978745698928833, -0.6442758440971375, 0.7044001221656799))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(2167.46923828125, 213, -631.9636840820312), Vector3.new(0.6589730978012085, -0.6376858949661255, -0.3988874852657318)),100,Vector3.new(2167.46923828125, 213, -631.9636840820312), Vector3.new(0.6589730978012085, -0.6376858949661255, -0.3988874852657318))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(1178.6993408203125, 212.26193237304688, -263.04681396484375), Vector3.new(0.04516664147377014, -0.9571055173873901, 0.28619781136512756)),100,Vector3.new(1178.6993408203125, 212.26193237304688, -263.04681396484375), Vector3.new(0.04516664147377014, -0.9571055173873901, 0.28619781136512756))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1040.117919921875, 215, 1662.1202392578125), Vector3.new(0.9582481980323792, -0.13812202215194702, 0.2503652274608612)), 100,Vector3.new(-1040.117919921875, 215, 1662.1202392578125), Vector3.new(0.9582481980323792, -0.13812202215194702, 0.2503652274608612))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-988.4560546875, 283, 1616.5068359375), Vector3.new(-0.44781866669654846, -0.36267393827438354, 0.8172675371170044)), 100,Vector3.new(-988.4560546875, 283, 1616.5068359375), Vector3.new(-0.44781866669654846, -0.36267393827438354, 0.8172675371170044))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1037.58544921875, 215.7229461669922, 1508.449951171875), Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317)),100,Vector3.new(-1037.58544921875, 215.7229461669922, 1508.449951171875), Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-908.2176513671875, 214, 1621.364990234375), Vector3.new(-0.21460314095020294, -0.40479180216789246, 0.88886958360672)),100,Vector3.new(-908.2176513671875, 214, 1621.364990234375), Vector3.new(-0.21460314095020294, -0.40479180216789246, 0.88886958360672))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-248.8604736328125, 273.4266052246094, 355.64453125), Vector3.new(0.6645273566246033, -0.5016912817955017, -0.5538134574890137)),100,Vector3.new(-248.8604736328125, 273.4266052246094, 355.64453125), Vector3.new(0.6645273566246033, -0.5016912817955017, -0.5538134574890137))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-319.3795471191406, 272.3931884765625, 388.7362060546875), Vector3.new(0.5347911715507507, -0.7442643046379089, -0.40008631348609924)),100,Vector3.new(-319.3795471191406, 272.3931884765625, 388.7362060546875), Vector3.new(0.5347911715507507, -0.7442643046379089, -0.40008631348609924))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-315.74334716796875, 270.4518737792969, 307.21185302734375), Vector3.new(0.4924789369106293, -0.6783868670463562, -0.5452118515968323)),100,Vector3.new(-315.74334716796875, 270.4518737792969, 307.21185302734375), Vector3.new(0.4924789369106293, -0.6783868670463562, -0.5452118515968323))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-178.00997924804688, 272.4919128417969, 390.1238708496094), Vector3.new(0.6851771473884583, -0.678036093711853, -0.26608139276504517)),100,Vector3.new(-178.00997924804688, 272.4919128417969, 390.1238708496094), Vector3.new(0.6851771473884583, -0.678036093711853, -0.26608139276504517))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-159.9521026611328, 269.81768798828125, 312.1455993652344), Vector3.new(0.6065837144851685, -0.7200759649276733, -0.33696722984313965)),100,Vector3.new(-159.9521026611328, 269.81768798828125, 312.1455993652344), Vector3.new(0.6065837144851685, -0.7200759649276733, -0.33696722984313965))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(89.97474670410156, 299.3000183105469, -936.1035766601562), Vector3.new(0.2870140075683594, -0.6174480319023132, -0.7323803305625916)),100,Vector3.new(89.97474670410156, 299.3000183105469, -936.1035766601562), Vector3.new(0.2870140075683594, -0.6174480319023132, -0.7323803305625916))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1169.5670166015625, 219.90908813476562, -1588.0274658203125), Vector3.new(0.015137090347707272, -0.6970996260643005, -0.7168144583702087)),100,Vector3.new(-1169.5670166015625, 219.90908813476562, -1588.0274658203125), Vector3.new(0.015137090347707272, -0.6970996260643005, -0.7168144583702087))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1201.4923095703125, 254.11367797851562, -1660.2674560546875), Vector3.new(0.04675392061471939, -0.6955714225769043, -0.7169341444969177)),100,Vector3.new(-1201.4923095703125, 254.11367797851562, -1660.2674560546875), Vector3.new(0.04675392061471939, -0.6955714225769043, -0.7169341444969177))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1288.0887451171875, 245.90695190429688, -1653.00537109375), Vector3.new(0.025024037808179855, -0.7537118196487427, -0.6567284464836121)),100,Vector3.new(-1288.0887451171875, 245.90695190429688, -1653.00537109375))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1339.789306640625, 245.81817626953125, -1634.641845703125), Vector3.new(0.07458476722240448, -0.6587507128715515, -0.7486552596092224)),100,Vector3.new(-1339.789306640625, 245.81817626953125, -1634.641845703125), Vector3.new(0.07458476722240448, -0.6587507128715515, -0.7486552596092224))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1432.3958740234375, 256.3514709472656, -1652.33984375), Vector3.new(0.007446270436048508, -0.6148971319198608, -0.7885722517967224)),100,Vector3.new(-1432.3958740234375, 256.3514709472656, -1652.33984375), Vector3.new(0.007446270436048508, -0.6148971319198608, -0.7885722517967224))
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1270.039794921875, 263.09088134765625, -1793.016357421875), Vector3.new(0.32165566086769104, -0.4306340515613556, -0.8432627320289612)),100,Vector3.new(-1270.039794921875, 263.09088134765625, -1793.016357421875), Vector3.new(0.32165566086769104, -0.4306340515613556, -0.8432627320289612))
wait(0.2)
local args = {
    [1] = 939731.82,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandCaver"):WaitForChild("Stones"):WaitForChild("Stone"),
    [5] = CFrame.new(-1049.37659, 215, 1646.53479, 0.999993384, 0.00298895454, -0.00207511522, -0, 0.570294261, 0.821440458, 0.00363867474, -0.821435034, 0.570290446),
    [6] = 100,
    [7] = Vector3.new(-43.01959991455078, 216.19691467285156, -200.375732421875)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(-1048.52368, 215, 1683.08154, 0.969707072, 0.241547287, -0.0363770761, -0, 0.148920938, 0.988849103, 0.244271129, -0.958893955, 0.144409657),
    [6] = 100,
    [7] = Vector3.new(-47.42127990722656, 215.7339324951172, -202.49114990234375)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(-987.150879, 215, 1667.19971, 0.914944112, 0.390497267, -0.101927787, -0, 0.252558649, 0.96758157, 0.403580725, -0.885283053, 0.231077015),
    [6] = 100,
    [7] = Vector3.new(-42.87627029418945, 216.94845581054688, -200.90744018554688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = 939731.82,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(4572.08203, 219.497177, 5281.18506, 0.653541863, -0.156973243, 0.740433991, -0, 0.978257895, 0.207392335, -0.756890297, -0.135539576, 0.639332533),
    [6] = 100,
    [7] = Vector3.new(-47.45362854003906, 217.59515380859375, -201.30079650878906)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(2150.41626, 216.977631, -620.214966, 0.542576551, -0.533092737, 0.649170995, -1.49011612e-08, 0.772816777, 0.634629369, -0.840006411, -0.34433502, 0.419312209),
    [6] = 100,
    [7] = Vector3.new(-45.78693389892578, 215.7545623779297, -203.71022033691406)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(2168.10864, 215.442368, -648.2948, 0.999150634, 0.0168674383, -0.0375972874, -9.31322686e-10, 0.912387192, 0.409328282, 0.0412076041, -0.408980608, 0.911612153),
    [6] = 100,
    [7] = Vector3.new(-46.27024459838867, 217.59515380859375, -199.48678588867188)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(2195.74121, 214.947037, -633.380371, 0.627761662, 0.333073497, -0.703546286, 1.49011612e-08, 0.903829932, 0.42789197, 0.778405607, -0.268614173, 0.567389786),
    [6] = 100,
    [7] = Vector3.new(-46.923622131347656, 217.59515380859375, -202.7979278564453)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(1135.47461, 221.200058, -3280.20483, 0.816403747, -0.3288019, 0.474736094, -0, 0.822080135, 0.569371998, -0.577481687, -0.464837432, 0.671149135),
    [6] = 100,
    [7] = Vector3.new(-80.33919525146484, 215.00575256347656, -884.0109252929688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(1118.67578, 221.866333, -3374.4729, -0.639936566, -0.691518486, 0.33508715, 1.49011612e-08, 0.436068505, 0.89991349, -0.76842773, 0.575887561, -0.279056191),
    [6] = 100,
    [7] = Vector3.new(-76.82958221435547, 216.3629913330078, -881.9810791015625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(1069.92468, 221.200027, -3394.1084, -0.861241043, 0.33216387, -0.384618104, -0, 0.756829202, 0.653612733, 0.508196771, 0.562918127, -0.651812315),
    [6] = 100,
    [7] = Vector3.new(-76.7877426147461, 216.2060546875, -882.0983276367188)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(995.937073, 221.200043, -3273.97607, -0.255309492, 0.30323121, -0.918078482, -7.45057971e-09, 0.949547052, 0.313624918, 0.9668594, 0.0800714269, -0.242428377),
    [6] = 100,
    [7] = Vector3.new(-81.3091049194336, 216.05020141601562, -884.2357788085938)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(-368.032806, 229.199478, -483.861359, -0.0814099088, 0.579163373, -0.811136484, -3.72528985e-09, 0.813837826, 0.581092179, 0.996680737, 0.0473066643, -0.0662544593),
    [6] = 100,
    [7] = Vector3.new(-80.90997314453125, 216.20582580566406, -884.9806518554688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(-420.017883, 216.896423, -200.341003, 0.0463441163, 0.618907869, -0.784095347, -1.86264515e-09, 0.784938812, 0.619573534, 0.998925626, -0.0287135858, 0.0363772884),
    [6] = 100,
    [7] = Vector3.new(-81.10070037841797, 216.1497344970703, -884.7239379882812)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(61.3417625, 224.774521, -23.4785957, 0.00760989357, 0.389301956, -0.921078801, -2.32830644e-10, 0.921105444, 0.389313221, 0.999971032, -0.00296263187, 0.00700951461),
    [6] = 100,
    [7] = Vector3.new(-76.59005737304688, 216.6658477783203, -884.2120361328125)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(217.870819, 216.467972, 3.97104454, -0.0854031295, 0.680155993, -0.728075624, -0, 0.730745435, 0.682650089, 0.996346474, 0.0583004542, -0.0624079481),
    [6] = 100,
    [7] = Vector3.new(-81.43997955322266, 216.1997833251953, -882.7205200195312)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(78.618309, 225.43338, -250.790756, -0.931004524, -0.221155539, 0.290380716, -1.4901163e-08, 0.795546651, 0.605892539, -0.365007848, 0.564088702, -0.740657389),
    [6] = 100,
    [7] = Vector3.new(3.1437907218933105, 215.29119873046875, -200.572509765625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(-82.7837143, 213.28685, -292.159271, -0.953455389, -0.273064911, 0.127900094, -0, 0.424164504, 0.90558517, -0.301534206, 0.86343509, -0.404421896),
    [6] = 100,
    [7] = Vector3.new(-46.6608772277832, 215.0364990234375, -201.5364227294922)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.2)

end)
end
end)
FFarmSection2:NewToggle("Quake Fast Farm (REALLY LAG)" , false, function(quakefarmm)  --Quake
getgenv().quakefarm2 = quakefarmm
        while getgenv().quakefarm2 do wait()
    pcall(function()
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Quake)
local v = x.VTCebvc
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1848.4346923828125, 222, -450.0833740234375), Vector3.new(-0.5347824096679688, -0.43560168147087097, -0.7240573167800903)),100,Vector3.new(-1848.4346923828125, 222, -450.0833740234375), Vector3.new(-0.5347824096679688, -0.43560168147087097, -0.7240573167800903))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1898.96728515625, 225.03367614746094, -200.6829071044922), Vector3.new(-0.9484627842903137, -0.18392488360404968, 0.25805023312568665)),100,Vector3.new(-1898.96728515625, 225.03367614746094, -200.6829071044922), Vector3.new(-0.9484627842903137, -0.18392488360404968, 0.25805023312568665))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1749.58203125, 224.88922119140625, -134.49240112304688), Vector3.new(-0.6882264614105225, -0.40487319231033325, 0.6020150184631348)),100,Vector3.new(-1749.58203125, 224.88922119140625, -134.49240112304688), Vector3.new(-0.6882264614105225, -0.40487319231033325, 0.6020150184631348))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1622.5482177734375, 225.85337829589844, -200.26828002929688), Vector3.new(-0.3189719319343567, -0.7127735018730164, 0.6246685981750488)),100,Vector3.new(-1622.5482177734375, 225.85337829589844, -200.26828002929688), Vector3.new(-0.3189719319343567, -0.7127735018730164, 0.6246685981750488))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(1002.1565551757812, 214, 3349.3857421875), Vector3.new(-0.2978745698928833, -0.6442758440971375, 0.7044001221656799)),100,Vector3.new(1002.1565551757812, 214, 3349.3857421875), Vector3.new(-0.2978745698928833, -0.6442758440971375, 0.7044001221656799))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(2167.46923828125, 213, -631.9636840820312), Vector3.new(0.6589730978012085, -0.6376858949661255, -0.3988874852657318)),100,Vector3.new(2167.46923828125, 213, -631.9636840820312), Vector3.new(0.6589730978012085, -0.6376858949661255, -0.3988874852657318))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(1178.6993408203125, 212.26193237304688, -263.04681396484375), Vector3.new(0.04516664147377014, -0.9571055173873901, 0.28619781136512756)),100,Vector3.new(1178.6993408203125, 212.26193237304688, -263.04681396484375), Vector3.new(0.04516664147377014, -0.9571055173873901, 0.28619781136512756))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1040.117919921875, 215, 1662.1202392578125), Vector3.new(0.9582481980323792, -0.13812202215194702, 0.2503652274608612)), 100,Vector3.new(-1040.117919921875, 215, 1662.1202392578125), Vector3.new(0.9582481980323792, -0.13812202215194702, 0.2503652274608612))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-988.4560546875, 283, 1616.5068359375), Vector3.new(-0.44781866669654846, -0.36267393827438354, 0.8172675371170044)), 100,Vector3.new(-988.4560546875, 283, 1616.5068359375), Vector3.new(-0.44781866669654846, -0.36267393827438354, 0.8172675371170044))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1037.58544921875, 215.7229461669922, 1508.449951171875), Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317)),100,Vector3.new(-1037.58544921875, 215.7229461669922, 1508.449951171875), Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-908.2176513671875, 214, 1621.364990234375), Vector3.new(-0.21460314095020294, -0.40479180216789246, 0.88886958360672)),100,Vector3.new(-908.2176513671875, 214, 1621.364990234375), Vector3.new(-0.21460314095020294, -0.40479180216789246, 0.88886958360672))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-248.8604736328125, 273.4266052246094, 355.64453125), Vector3.new(0.6645273566246033, -0.5016912817955017, -0.5538134574890137)),100,Vector3.new(-248.8604736328125, 273.4266052246094, 355.64453125), Vector3.new(0.6645273566246033, -0.5016912817955017, -0.5538134574890137))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-319.3795471191406, 272.3931884765625, 388.7362060546875), Vector3.new(0.5347911715507507, -0.7442643046379089, -0.40008631348609924)),100,Vector3.new(-319.3795471191406, 272.3931884765625, 388.7362060546875), Vector3.new(0.5347911715507507, -0.7442643046379089, -0.40008631348609924))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-315.74334716796875, 270.4518737792969, 307.21185302734375), Vector3.new(0.4924789369106293, -0.6783868670463562, -0.5452118515968323)),100,Vector3.new(-315.74334716796875, 270.4518737792969, 307.21185302734375), Vector3.new(0.4924789369106293, -0.6783868670463562, -0.5452118515968323))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-178.00997924804688, 272.4919128417969, 390.1238708496094), Vector3.new(0.6851771473884583, -0.678036093711853, -0.26608139276504517)),100,Vector3.new(-178.00997924804688, 272.4919128417969, 390.1238708496094), Vector3.new(0.6851771473884583, -0.678036093711853, -0.26608139276504517))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-159.9521026611328, 269.81768798828125, 312.1455993652344), Vector3.new(0.6065837144851685, -0.7200759649276733, -0.33696722984313965)),100,Vector3.new(-159.9521026611328, 269.81768798828125, 312.1455993652344), Vector3.new(0.6065837144851685, -0.7200759649276733, -0.33696722984313965))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(89.97474670410156, 299.3000183105469, -936.1035766601562), Vector3.new(0.2870140075683594, -0.6174480319023132, -0.7323803305625916)),100,Vector3.new(89.97474670410156, 299.3000183105469, -936.1035766601562), Vector3.new(0.2870140075683594, -0.6174480319023132, -0.7323803305625916))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1169.5670166015625, 219.90908813476562, -1588.0274658203125), Vector3.new(0.015137090347707272, -0.6970996260643005, -0.7168144583702087)),100,Vector3.new(-1169.5670166015625, 219.90908813476562, -1588.0274658203125), Vector3.new(0.015137090347707272, -0.6970996260643005, -0.7168144583702087))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1201.4923095703125, 254.11367797851562, -1660.2674560546875), Vector3.new(0.04675392061471939, -0.6955714225769043, -0.7169341444969177)),100,Vector3.new(-1201.4923095703125, 254.11367797851562, -1660.2674560546875), Vector3.new(0.04675392061471939, -0.6955714225769043, -0.7169341444969177))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1288.0887451171875, 245.90695190429688, -1653.00537109375), Vector3.new(0.025024037808179855, -0.7537118196487427, -0.6567284464836121)),100,Vector3.new(-1288.0887451171875, 245.90695190429688, -1653.00537109375))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1339.789306640625, 245.81817626953125, -1634.641845703125), Vector3.new(0.07458476722240448, -0.6587507128715515, -0.7486552596092224)),100,Vector3.new(-1339.789306640625, 245.81817626953125, -1634.641845703125), Vector3.new(0.07458476722240448, -0.6587507128715515, -0.7486552596092224))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1432.3958740234375, 256.3514709472656, -1652.33984375), Vector3.new(0.007446270436048508, -0.6148971319198608, -0.7885722517967224)),100,Vector3.new(-1432.3958740234375, 256.3514709472656, -1652.33984375), Vector3.new(0.007446270436048508, -0.6148971319198608, -0.7885722517967224))

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1270.039794921875, 263.09088134765625, -1793.016357421875), Vector3.new(0.32165566086769104, -0.4306340515613556, -0.8432627320289612)),100,Vector3.new(-1270.039794921875, 263.09088134765625, -1793.016357421875), Vector3.new(0.32165566086769104, -0.4306340515613556, -0.8432627320289612))

local args = {
    [1] = 939731.82,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandCaver"):WaitForChild("Stones"):WaitForChild("Stone"),
    [5] = CFrame.new(-1049.37659, 215, 1646.53479, 0.999993384, 0.00298895454, -0.00207511522, -0, 0.570294261, 0.821440458, 0.00363867474, -0.821435034, 0.570290446),
    [6] = 100,
    [7] = Vector3.new(-43.01959991455078, 216.19691467285156, -200.375732421875)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(-1048.52368, 215, 1683.08154, 0.969707072, 0.241547287, -0.0363770761, -0, 0.148920938, 0.988849103, 0.244271129, -0.958893955, 0.144409657),
    [6] = 100,
    [7] = Vector3.new(-47.42127990722656, 215.7339324951172, -202.49114990234375)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(-987.150879, 215, 1667.19971, 0.914944112, 0.390497267, -0.101927787, -0, 0.252558649, 0.96758157, 0.403580725, -0.885283053, 0.231077015),
    [6] = 100,
    [7] = Vector3.new(-42.87627029418945, 216.94845581054688, -200.90744018554688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = 939731.82,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(4572.08203, 219.497177, 5281.18506, 0.653541863, -0.156973243, 0.740433991, -0, 0.978257895, 0.207392335, -0.756890297, -0.135539576, 0.639332533),
    [6] = 100,
    [7] = Vector3.new(-47.45362854003906, 217.59515380859375, -201.30079650878906)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(2150.41626, 216.977631, -620.214966, 0.542576551, -0.533092737, 0.649170995, -1.49011612e-08, 0.772816777, 0.634629369, -0.840006411, -0.34433502, 0.419312209),
    [6] = 100,
    [7] = Vector3.new(-45.78693389892578, 215.7545623779297, -203.71022033691406)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(2168.10864, 215.442368, -648.2948, 0.999150634, 0.0168674383, -0.0375972874, -9.31322686e-10, 0.912387192, 0.409328282, 0.0412076041, -0.408980608, 0.911612153),
    [6] = 100,
    [7] = Vector3.new(-46.27024459838867, 217.59515380859375, -199.48678588867188)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(2195.74121, 214.947037, -633.380371, 0.627761662, 0.333073497, -0.703546286, 1.49011612e-08, 0.903829932, 0.42789197, 0.778405607, -0.268614173, 0.567389786),
    [6] = 100,
    [7] = Vector3.new(-46.923622131347656, 217.59515380859375, -202.7979278564453)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(1135.47461, 221.200058, -3280.20483, 0.816403747, -0.3288019, 0.474736094, -0, 0.822080135, 0.569371998, -0.577481687, -0.464837432, 0.671149135),
    [6] = 100,
    [7] = Vector3.new(-80.33919525146484, 215.00575256347656, -884.0109252929688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(1118.67578, 221.866333, -3374.4729, -0.639936566, -0.691518486, 0.33508715, 1.49011612e-08, 0.436068505, 0.89991349, -0.76842773, 0.575887561, -0.279056191),
    [6] = 100,
    [7] = Vector3.new(-76.82958221435547, 216.3629913330078, -881.9810791015625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(1069.92468, 221.200027, -3394.1084, -0.861241043, 0.33216387, -0.384618104, -0, 0.756829202, 0.653612733, 0.508196771, 0.562918127, -0.651812315),
    [6] = 100,
    [7] = Vector3.new(-76.7877426147461, 216.2060546875, -882.0983276367188)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(995.937073, 221.200043, -3273.97607, -0.255309492, 0.30323121, -0.918078482, -7.45057971e-09, 0.949547052, 0.313624918, 0.9668594, 0.0800714269, -0.242428377),
    [6] = 100,
    [7] = Vector3.new(-81.3091049194336, 216.05020141601562, -884.2357788085938)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(-368.032806, 229.199478, -483.861359, -0.0814099088, 0.579163373, -0.811136484, -3.72528985e-09, 0.813837826, 0.581092179, 0.996680737, 0.0473066643, -0.0662544593),
    [6] = 100,
    [7] = Vector3.new(-80.90997314453125, 216.20582580566406, -884.9806518554688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(-420.017883, 216.896423, -200.341003, 0.0463441163, 0.618907869, -0.784095347, -1.86264515e-09, 0.784938812, 0.619573534, 0.998925626, -0.0287135858, 0.0363772884),
    [6] = 100,
    [7] = Vector3.new(-81.10070037841797, 216.1497344970703, -884.7239379882812)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(61.3417625, 224.774521, -23.4785957, 0.00760989357, 0.389301956, -0.921078801, -2.32830644e-10, 0.921105444, 0.389313221, 0.999971032, -0.00296263187, 0.00700951461),
    [6] = 100,
    [7] = Vector3.new(-76.59005737304688, 216.6658477783203, -884.2120361328125)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(217.870819, 216.467972, 3.97104454, -0.0854031295, 0.680155993, -0.728075624, -0, 0.730745435, 0.682650089, 0.996346474, 0.0583004542, -0.0624079481),
    [6] = 100,
    [7] = Vector3.new(-81.43997955322266, 216.1997833251953, -882.7205200195312)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(78.618309, 225.43338, -250.790756, -0.931004524, -0.221155539, 0.290380716, -1.4901163e-08, 0.795546651, 0.605892539, -0.365007848, 0.564088702, -0.740657389),
    [6] = 100,
    [7] = Vector3.new(3.1437907218933105, 215.29119873046875, -200.572509765625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = v,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
    [5] = CFrame.new(-82.7837143, 213.28685, -292.159271, -0.953455389, -0.273064911, 0.127900094, -0, 0.424164504, 0.90558517, -0.301534206, 0.86343509, -0.404421896),
    [6] = 100,
    [7] = Vector3.new(-46.6608772277832, 215.0364990234375, -201.5364227294922)
}

game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(21)

end)
end
end)
FFarmSection2:NewToggle("Refresh For Balance Lag (Every 15mins)",false,function(fc)
        getgenv().qw = fc
        while getgenv().qw do wait(900)
            pcall(function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
game:GetService("Workspace").LocalPlayer.CharacterTrait.Health = 0
            end)
        end
    end)
FFarmSection2:NewToggle("Auto Spawn",_G.AutoSpawn,function(spawn)
            _G.AutoSpawn = spawn
        end)
            spawn(function()
            while wait() do
                if _G.AutoSpawn then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Visible == true then
                            repeat wait(3)
                                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
                                    v.Function()
                                end
                            until game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Visible == false
                        end
                    end)
                end
            end
            end)
SHAVESection:NewToggle("Shave and Dash player to the sea",false, function(mob)
getgenv().bringmob04 = mob
while getgenv().bringmob04 do wait()
pcall(function()
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
for i,c in pairs(game.Workspace:GetChildren()) do
if c:IsA("Model") and c.Name == v.Name then
local args = {
    [1] = c.HumanoidRootPart.CFrame * CFrame.new(0,-25,0),
    [2] = workspace:WaitForChild("IslandTown"):WaitForChild("Beach"):WaitForChild("Beach")
}

c.Shave:FireServer(unpack(args))
local args = {
    [1] = c.HumanoidRootPart.CFrame * CFrame.new(0,-25,0),
    [2] = workspace:WaitForChild("IslandTown"):WaitForChild("Beach"):WaitForChild("Beach")
}

c.Dash:FireServer(unpack(args))
end
end
end
end
wait()
end)
end
end)
SHAVESection:NewToggle("Quake Kill All",false, function(qare)
    getgenv().vcm = qare
        while getgenv().vcm do wait()
    pcall(function()
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Quake)
local vp = x.VTCebvc
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
for i,c in pairs(game.Workspace:GetChildren()) do
if c:IsA("Model") and c.Name == v.Name then
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(vp,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,c.HumanoidRootPart.CFrame,100,Vector3.new(-290.4129333496094, 266.8401794433594, -103.8988037109375))
end
end
end
end
end)
end
end)
SHAVESection:NewToggle("Light Kill All",false, function(lare)
getgenv().ltm = lare
while getgenv().ltm do wait()
pcall(function()
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Light)
local campb = x.VTCrv
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
for i,c in pairs(game.Workspace:GetChildren()) do
if c:IsA("Model") and c.Name == v.Name then
local args = {
    [1] = campb,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = c.HumanoidRootPart.CFrame,
    [5] = workspace.IslandCaver.Stones.Stone,
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
end
end
end
end
end)
end
end)
local dropdown =  AboutSection:NewDropdown("Select Player", "", PLRS, function(f)
Choose = f
Choose2 = f
end)

AboutSection:NewButton("Refresh PLR List", "Refreshes Dropdown", function(aa)
local PLRS = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
table.insert(PLRS,v.Name)
end
dropdown:Refresh(PLRS)
end)
AboutSection:NewToggle("View Player",false,function(bool)
            Sp = bool
            local plr1 = game.Players.LocalPlayer.Character.Humanoid
            local plr2 = game.Players:FindFirstChild(Choose)
            repeat wait()
                game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
            until Sp == false 
            game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        end)
AboutSection:NewButton("Teleport", "Teleports you to selected player", function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == Choose then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
end
end
end)
AboutSection:NewToggle("ESP ALL PLAYER",false,function(ESP)
        
            ESPPlayer = ESP
            while ESPPlayer do wait()
                UpdatePlayerChams()
            end
        
        end)
            spawn(function()
            while wait() do
                if KillPlayer then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,distance)
                    game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                end
            end
        end)
        spawn(function()
            while wait() do
                if _G.BringPlayer then
                    pcall(function()
                        game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
                    end)
                end
            end
        end)
        function isnil(thing)
            return (thing == nil)
        end
        local function round(n)
            return math.floor(tonumber(n) + 0.5)
        end
        Number = math.random(1, 1000000)
        function UpdatePlayerChams()
            for i,v in pairs(game:GetService'Players':GetChildren()) do
                pcall(function()
                    if not isnil(v.Character) then
                        if ESPPlayer then
                            if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                                local bill = Instance.new('BillboardGui',v.Character.Head)
                                bill.Name = 'NameEsp'..Number
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1,200,1,30)
                                bill.Adornee = v.Character.Head
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel',bill)
                                name.Font = "SourceSansBold"
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                                name.Size = UDim2.new(1,0,1,0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                if v.Team == game.Players.LocalPlayer.Team then
                                    name.TextColor3 = Color3.new(0, 254, 252)
                                else
                                    name.TextColor3 = Color3.new(0, 254, 252)
                                end
                            else
                                v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                            end
                        else
                            if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                                v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                            end
                        end
                    end
                end)
            end
        end
CampSection:NewToggle("Light Camp" ,false, function(campbylight)
getgenv().campto2 = campbylight
 while getgenv().campto2 do wait()
pcall(function()
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Light)
local lightcode = x.VTCrv
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == Choose2 then
local args = {
    [1] = lightcode,
    [2] = "LightPower2",
    [3] = "StopCharging",
    [4] = v.HumanoidRootPart.CFrame,
    [5] = workspace.IslandCaver.Stones.Stone,
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
        wait()
        end
        end
end)
 end
end)
CampSection:NewToggle("Quake Camp" , false, function(state)
getgenv().campquake = state
while getgenv().campquake do wait()
pcall(function()
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Quake)
local vp = x.VTCebvc
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == Choose2 then
        game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(vp,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,v.HumanoidRootPart.CFrame,100,Vector3.new(-290.4129333496094, 266.8401794433594, -103.8988037109375))
               wait()
               end
    end
    end)
    end
    end)
ServerSection:NewButton("LOW GRAPHIC MODE", "", function()
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
	end)


end)
ServerSection:NewButton("Rejoin","Rejoin", function()
game.Players.LocalPlayer:Kick("Rejoining  Please Wait...")
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)
ServerSection:NewButton("Server Hop","Teleport To Low Server", function()
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
end)
SettingsSection2:NewButton("Keyboard For Mobile User","keyboard", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/mob.txt'),true))()
local KeyboardguiWarriorRoberrVersion = Instance.new("ScreenGui")
local Drag = Instance.new("Frame")
local Close = Instance.new("TextButton")

--Properties:

KeyboardguiWarriorRoberrVersion.Name = "Keyboard gui WarriorRoberr Version"
KeyboardguiWarriorRoberrVersion.Parent = game.CoreGui
KeyboardguiWarriorRoberrVersion.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Drag.Name = "Drag"
Drag.Parent = KeyboardguiWarriorRoberrVersion
Drag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Drag.BorderSizePixel = 0
Drag.Position = UDim2.new(0.147916675, 0, 0.0593749993, 0)
Drag.Size = UDim2.new(0, 270, 0, 30)
Drag.Active = true
Drag.Draggable = true

Close.Name = "Close"
Close.Parent = Drag
Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.999839723, 0, -0.00729167089, 0)
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 35.000
Close.MouseButton1Click:Connect(function()
	KeyboardguiWarriorRoberrVersion:Destroy()
end)
game.CoreGui["BUNB0yBUN BOARD"].KeyBoard.Parent = Drag
game.CoreGui["BUNB0yBUN BOARD"]:Destroy()
game.CoreGui["Keyboard gui WarriorRoberr Version"].Drag.KeyBoard.Bunb0ybun.Text = "BETTER VERSION "
game.CoreGui["Keyboard gui WarriorRoberr Version"].Drag.KeyBoard.Position = UDim2.new(0, 0, 0, 35)
game.CoreGui["Keyboard gui WarriorRoberr Version"].Drag.KeyBoard.Bunb0ybun.TextSize = 10
end)
SettingsSection:NewKeybind("Toggle Ui", "Toggles the ui on and off when key is pressed", Enum.KeyCode.M, function()
Library:ToggleUI()
end)
local colors = {
    SchemeColor = Color3.fromRGB(0, 166, 58),
    Background = Color3.fromRGB(31, 41, 43),
    Header = Color3.fromRGB(22, 29, 31),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(22, 29, 31)
    }

for theme, color in pairs(colors) do
    ColorSection:NewColorPicker(theme, "Change your "..theme, color, function(color3)
    Library:ChangeColor(theme, color3)
    end)
end
end
