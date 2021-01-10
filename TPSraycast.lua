--script should be in like a gun tool or something
local bulletDebris = workspace.Debris or Instance.new("Folder",workspace).Name = 'Debirs' --folder to hold our visble depictions of rays
local Debris = game:GetService("Debris")

local Player = game.Players.LocalPlayer
local Character = Player.Character
local Mouse = Player:GetMouse()

local range = 1000
local bulletLifetime = 0.01 -- how long the visual depiction will last should keep lower than 5 or 10

local raycastParams = raycastParams.new()
raycastParams.FilterDescendantsInstances = {bulletDebris, Character}

Mouse.TargetFilter = Debris --the FilterDescendantsInstances doesn't mean completely ignore the rays will still hit objects in debris

local function Cast()
  local raycast = workspace:Raycast(Character.HumanoidRootPart.Position, (mouse.Hit.Position-player.Character.HumanoidRootPart.Position).unit * range, raycastParams)
end
--very basic starting point for third person shooting
