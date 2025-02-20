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
      Note = "you can get the key in the discord channel: https://discord.gg/j7FbQjscGF", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
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
   loadstring(game:HttpGet("https://pastebin.com/raw/cYfKTJkn"))()
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
