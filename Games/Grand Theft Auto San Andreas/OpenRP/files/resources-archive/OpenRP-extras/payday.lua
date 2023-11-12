function allPlayersPayDay()
	local allPlayers = getElementsByType("player")
	for index,value in ipairs(allPlayers) do
	givePlayerMoney ( value, 100 )
	outputChatBox ("   ------Payday------  ", value, 255, 255, 255, false)
	outputChatBox ("|--------------------------|", value, 255, 255, 255, false)
	outputChatBox ("+100$", value, 0, 255, 0, false)
	outputChatBox ("You got 100$ for playing!", value, 255, 255, 255, false)
	outputChatBox ("|--------------------------|", value, 255, 255, 255, false)
	end
end

function onResourceStart(thisResource)
	setTimer(allPlayersPayDay, 480000, 0)
end
addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), onResourceStart)
