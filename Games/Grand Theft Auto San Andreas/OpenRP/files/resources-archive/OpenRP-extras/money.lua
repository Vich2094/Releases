function consoleMoneyOnJoin()
	givePlayerMoney ( source, 10000 )
	outputChatBox ("   ------Free Award------  ", source, 255, 255, 255, false)
	outputChatBox ("|--------------------------|", source, 255, 255, 255, false)
	outputChatBox ("+50000$", source, 255, 255, 255)
	outputChatBox ("|--------------------------|", source, 255, 255, 255, false)
end
addEventHandler("onPlayerJoin", getRootElement(), consoleMoneyOnJoin)
