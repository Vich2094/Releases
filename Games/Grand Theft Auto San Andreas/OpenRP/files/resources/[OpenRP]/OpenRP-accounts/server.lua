function onLogin()
	spawnPlayer(source, 1682.8941650391, -2329.4721679688, 13.546875 , 0, 0, 0, 0) -- 1743.0324, -1861.8645, 13.5769, 0, 217, 0, 0
	fadeCamera(source, true, 0.5)
	setCameraTarget(source, source)
	setElementData(source, "OpenRP:logged", true, true)
end
addEventHandler("onPlayerJoin", root, onLogin)