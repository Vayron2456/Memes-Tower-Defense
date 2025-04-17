local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Vayron2456/UI/refs/heads/main/UI.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "Memes Tower Defense",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Memes Tower Defense",
   LoadingSubtitle = "by: Andrew",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Are You A Bot?",
      Subtitle = "Key System",
      Note = "Please Join The Discord: discord.gg/pRW5WHHwpz", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Memes Tower Defense!!!!"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Buy Towers:", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Buy Towers:")

Rayfield:Notify({
   Title = "Please Join The Discord!!!!!!!!",
   Content = "discord.gg/pRW5WHHwpz",
   Duration = 6.5,
   Image = 4483362458,
})

local Button = Tab:CreateButton({
   Name = "Buy Scientist:",
   Callback = function()
   local args = {
    [1] = "Scientist";
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions", 9e9):WaitForChild("InteractShop", 9e9):InvokeServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Rebel:",
   Callback = function()
   local args = {
    [1] = "Rebel";
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions", 9e9):WaitForChild("InteractShop", 9e9):InvokeServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Worker:",
   Callback = function()
   local args = {
    [1] = "Worker";
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions", 9e9):WaitForChild("InteractShop", 9e9):InvokeServer(unpack(args))
print("Bought Worker If Enough.")
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Sniper",
   Callback = function()
   local args = {
    [1] = "Sniper";
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions", 9e9):WaitForChild("InteractShop", 9e9):InvokeServer(unpack(args))
print("Bought Sniper If Enough.")
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Crazy Dave",
   Callback = function()
   local args = {
    [1] = "CrazyDave";
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions", 9e9):WaitForChild("InteractShop", 9e9):InvokeServer(unpack(args))
print("Bough Dave If Enough.")
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Artillery",
   Callback = function()
   local args = {
    [1] = "Artillery";
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions", 9e9):WaitForChild("InteractShop", 9e9):InvokeServer(unpack(args))
print("Bought Artillery If Enough.")
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Sharp Shooter (Op)",
   Callback = function()
   local args = {
    [1] = "SharpShooter";
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions", 9e9):WaitForChild("InteractShop", 9e9):InvokeServer(unpack(args))
print("Bought SharpShooter If Enough.")
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Nemesis",
   Callback = function()
   local args = {
    [1] = "Nemesis";
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions", 9e9):WaitForChild("InteractShop", 9e9):InvokeServer(unpack(args))
print("Bough Nemesis if enough.")
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Heave (End Game Unit)",
   Callback = function()
  local args = {
    [1] = "Heavy";
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions", 9e9):WaitForChild("InteractShop", 9e9):InvokeServer(unpack(args))
print("Bought Heavy if enough.")
   end,
})

local Tab = Window:CreateTab("Auto Skip Wave:", 4483362458) 

local Section = Tab:CreateSection("Auto Skip Waves:")

local Toggle = Tab:CreateToggle({
   Name = "Skip Wave: Yes?",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   local args = {
    [1] = "Yes";
}

game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("VoteForSkip", 9e9):FireServer(unpack(args))
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Skip Wave: No?",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   local args = {
    [1] = "No";
}

game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("VoteForSkip", 9e9):FireServer(unpack(args))
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Ready?",
   CurrentValue = false,
   Flag = "Ready?", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   local args = {
    [1] = 1;
}

game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("VoteStartGame", 9e9):FireServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Leave The Game:",
   Callback = function()
   local args = {}

game:GetService("ReplicatedStorage"):WaitForChild("Events", 9e9):WaitForChild("ExitGame", 9e9):FireServer(unpack(args))
   print("Leaved The Game:")
   end,
})
