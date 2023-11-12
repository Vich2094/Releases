local Clock = os.clock()
local ContentProvider = gameGetService(ContentProvider)

local Assets = {}
local Counter = 0

local Player = game.Players.LocalPlayer
local Backpack = PlayerWaitForChild(Backpack)

for _, Stuff in pairs({game.ReplicatedStorage, script, Backpack, gameGetService(StarterPack), game.Lighting}) do
	for _, object in pairs(StuffGetDescendants()) do
		if objectIsA(Animation) or objectIsA(ParticleEmitter) or objectIsA(Decal) or objectIsA(Texture) or objectIsA(ImageLabel) or objectIsA(ImageButton) or objectIsA(MeshPart) or objectIsA(SpecialMesh) or objectIsA(Sound) then continue end

		table.insert(Assets, object)
	end
end

ContentProviderPreloadAsync(Assets, function()
	Counter = Counter + 1
end)

warn(string.format(' == PRELOADED Assets IN %.2f SECONDS. == ', os.clock() - Clock))