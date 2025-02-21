local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
 
local Window = Rayfield:CreateWindow({
   Name = "MainHubWex",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "My first hub",
   LoadingSubtitle = "by Wexward",
   Theme = "AmberGlow", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
 
   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://discord.gg/j7FbQjscGF", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
 
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "WexSecurity",
      Subtitle = "KeySystem",
      Note = "you can get the key in the discord channel: .gg/j7FbQjscGF", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"hohoho25678945HubWex"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
--farmHAS
local FarmHASTab = Window:CreateTab("FarmHAS", 4483362458) -- Title, Image
 
--Farm(HideAndSeekExtreme)
local Button = FarmHASTab:CreateButton({
   Name = "TakeAllCoins",
   Callback = function(p)
 
for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Credit' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
   end,
})
 
local Button = FarmHASTab:CreateButton({
   Name = "SafeLocation",
   Callback = function(o)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.BasePlate.CFrame
   end,
})
 
--player
local PlayerTab = Window:CreateTab("Player", 4483362458) -- Title, Image
 
local Slider = PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 100},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})
 
local Slider = PlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 215},
   Increment = 1,
   Suffix = "JumpPower",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value1)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value1
   end,
})
 
Rayfield:Notify({
   Title = "Injected",
   Content = "The script Has injected",
   Duration = 6.5,
   Image = 4483362458,
})
 
local Button = PlayerTab:CreateButton({
   Name = "NoclipGUI",
   Callback = function(loks)
    loadstring(game:HttpGet("https://pastebin.com/raw/H61r8j3S"))()
   end,
})
 
local Button = PlayerTab:CreateButton({
   Name = "InfiniteJump",
   Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/J1e2qjSm"))()
   end,
})
 
--Other
local OtherTab = Window:CreateTab("Other", 4483362458) -- Title, Image
 
local Button = OtherTab:CreateButton({
   Name = "DestroyGui",
   Callback = function()
   Rayfield:Destroy()
   end,
})
 
local Button = OtherTab:CreateButton({
   Name = "IY(InfiniteYield)",
   Callback = function()
     loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
   end,
})
 
local Button = OtherTab:CreateButton({
   Name = "OtherScript(1)",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/WQ5SEp0d"))()
   end,
})
 
local Button = OtherTab:CreateButton({
   Name = "Other script(2)",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/iX6Nj052"))()
   end,
})
 
local Button = OtherTab:CreateButton({
   Name = "Other script(SuperMarketSImulator)",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/SpPrLv81"))()
   end,
})
 
local Button = OtherTab:CreateButton({
   Name = "TSBScript(1)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ATrainz/Phantasm/refs/heads/main/Phantasm.lua"))()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "TSBScript(2)",
   Callback = function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
----<< LOADER >> -----
if getgenv().KadeHubLoaded ~= true then
    getgenv().KadeHubLoaded = true
   loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/Work/main/latest.lua"))()
else
    game.StarterGui:SetCore("SendNotification",  { Title = "KadeHub"; Text = "KadeHub is already executed!"; Icon = "rbxassetid://17893547380"; Duration = 15; })
end
   end,
})

--shooters
local ShootersTab = Window:CreateTab("Shooters", 4483362458) -- Title, Image
 
local Button = ShootersTab:CreateButton({
   Name = "HitboxExpander",
   Callback = function()
   loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Update-script-hitbox-9326"))()
   end,
})
 
local Button = ShootersTab:CreateButton({
   Name = "Esp",
   Callback = function()
   local esp = loadstring(game:HttpGet('https://raw.githubusercontent.com/0f76/seere_v3/main/ESP/v3_esp.lua'))()

esp.enabled = true

esp.teamcheck = false

esp.outlines = true
esp.shortnames = true
esp.team_boxes = {true,Color3.fromRGB(255,255,255),Color3.fromRGB(1,1,1),0}
esp.team_chams = {true,Color3.fromRGB(138, 139, 194),Color3.fromRGB(138, 139, 194),.25,.75,true}
esp.team_names = {true,Color3.fromRGB(255,255,255)}
esp.team_weapon = { true, Color3.fromRGB(255,255,255)}
esp.team_distance = true
esp.team_health = true
   end,
})

local Button = ShootersTab:CreateButton({
   Name = "RadarHack",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/LT835Wic"))()
   end,
})

local Button = ShootersTab:CreateButton({
   Name = "Solaris.lol-CounterBlox",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/solaris_bootstrapper.lua",true))()
   end,
})

--News
local NewsTab = Window:CreateTab("News", 4483362458) -- Title, Image

local Paragraph = NewsTab:CreateParagraph({Title = "Update(1)", Content = "New tab:Shooters, News functions in Player(InfiniteJump) And Functions in shooters(Esp + HitboxExpander)"})

local Paragraph = NewsTab:CreateParagraph({Title = "Update(2)", Content = "New Function in Shooters:Script(Solaris.lol) For CounterBlox, And New Two Functions in Other Tab: Script For TSB1 And Script for TSB2"})

local Paragraph = NewsTab:CreateParagraph({Title = "Update(3)", Content = "New Tab BrookHaven, and functions in tab BrookHaven:OtherHub, FlyGuiV3, Ctrl+Click TP. New tab TowerOfHell, And new functions in tab TowerOfHell: TakeSpeedCoil, TakeInfJumpCoil, TakeHook, TakeGravityCoil, TakeFusionCoil, TakeBloxyCola, And sliders: WalkSpeed changer, And JumpPower changer!!!"})

--BrookHaven

local BrookHavenTab = Window:CreateTab("BrookHaven", 4483362458) -- Title, Image

local Button = BrookHavenTab:CreateButton({
   Name = "OtherHub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/as6cd0/SP_Hub/refs/heads/main/Brookhaven"))()
   end,
})

local Button = BrookHavenTab:CreateButton({
   Name = "Ctrl+Click TP",
   Callback = function()
   game.StarterGui:SetCore("SendNotification",{
    Title = "Usage";
    Text = "Hover mouse on target then press ctrl + mouse1";
})

game.StarterGui:SetCore("SendNotification",{
    Title = "Shameless Plugin";
    Text = "WexHub:)";
})

local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
   end,
})

local Button = BrookHavenTab:CreateButton({
   Name = "FlyGuiV3",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
   end,
})

--TowerOfHell
local TowerOfHellTab = Window:CreateTab("TowerOfHell", 4483362458) -- Title, Image

local Button = TowerOfHellTab:CreateButton({
   Name = "TakeSpeedCoil(one time)",
   Callback = function()
   game.ReplicatedStorage.Gear.speed.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = TowerOfHellTab:CreateButton({
   Name = "TakeInfJumpCoil(one time)",
   Callback = function()
   game.ReplicatedStorage.Gear.jump.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = TowerOfHellTab:CreateButton({
   Name = "TakeHook(one time)",
   Callback = function()
   game.ReplicatedStorage.Gear.hook.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = TowerOfHellTab:CreateButton({
   Name = "TakeGravityCoil(one time)",
   Callback = function()
   game.ReplicatedStorage.Gear.gravity.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = TowerOfHellTab:CreateButton({
   Name = "TakeFusionCoil(one time)",
   Callback = function()
   game.ReplicatedStorage.Gear.fusion.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = TowerOfHellTab:CreateButton({
   Name = "TakeBloxyCola(one time)",
   Callback = function()
   game.ReplicatedStorage.Gear.cola.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Slider = TowerOfHellTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 100},
   Increment = 1,
   Suffix = "WalkSpeed",
   CurrentValue = 10,
   Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value123)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value123
   end,
})

local Slider = TowerOfHellTab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 175},
   Increment = 1,
   Suffix = "JumpPower",
   CurrentValue = 10,
   Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value1234)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value1234
   end,
})
