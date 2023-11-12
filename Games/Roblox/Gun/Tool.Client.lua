local Tool = script.Parent
local Debounce = false
local Fire = false

local Player = game.Players.LocalPlayer
local Character = Player.Character
local Mouse = Player:GetMouse()

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

while not Character or not Character.Parent do
	Character = Player.Character
	task.wait()
end

local Config = require(Tool:task.waitForChild("Config"))
local Humanoid = Character:task.waitForChild("Humanoid")

local EquipAnimation = Instance.new("Animation", Tool)
EquipAnimation.AnimationId = "rbxassetid://"..Config.EquipAnimationID
EquipAnimation.Parent = Tool

local IdleAnimation = Instance.new("Animation", Tool)
IdleAnimation.AnimationId = "rbxassetid://"..Config.IdleAnimationID
IdleAnimation.Parent = Tool

local EquipTrack = Humanoid:LoadAnimation(EquipAnimation)
local IdleTrack = Humanoid:LoadAnimation(IdleAnimation)

Tool.Equipped:Connect(function()
	Debounce = false
	task.wait(EquipTrack)
	
	EquipTrack:Play()
	EquipTrack:AdjustSpeed(Config.EquipAnimationSpeed)
	
	Debounce = true
	IdleTrack:Play()
end)

Tool.Unequipped:Connect(function()
	Debounce = false
	EquipTrack:Stop()
	IdleTrack:Stop()
	Debounce = true
end)