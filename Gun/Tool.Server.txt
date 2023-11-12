local Tool = script.Parent

local Player = game.Players.LocalPlayer
local Equipped = false
local Motor6D

Tool.Equipped:Connect(function()
	Motor6D = Tool.Parent:FindFirstChild("Torso"):FindFirstChild("Grip")
	Motor6D.Part0 = Tool.Parent:FindFirstChild("Right Arm")
	Motor6D.Part1 = Tool.Handle
	local RightGrip = Tool.Parent:FindFirstChild("Right Arm"):WaitForChild("RightGrip")
	RightGrip:Destroy()
end)

Tool.Unequipped:Connect(function()
	Equipped = false
end)