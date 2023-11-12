function setupServer()
	setGameType("OpenRP v"..currentVersion)
	setMapName("San Andreas")
	setRuleValue("OpenRP-version", currentVersion)
	outputDebugString("OpenRP v"..currentVersion.." initialized successfully!")
end
addEventHandler("onResourceStart", resourceRoot, setupServer)

function movePlayerRelative(thePlayer, x, y, z)
	if not thePlayer or getElementType(thePlayer) ~= "player" then return end
	if not x then return end
	if not y then y = 0 end
	if not z then z = 0 end
	
	local px,py,pz = getElementPosition(thePlayer)
	setElementPosition(thePlayer, px+x, py+y, pz+z)
end