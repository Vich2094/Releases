function setupClient()
	setWorldSpecialPropertyEnabled("extraairresistance", false)

	setAmbientSoundEnabled("gunfire", false)
end
addEventHandler("onClientResourceStart", resourceRoot, setupClient)