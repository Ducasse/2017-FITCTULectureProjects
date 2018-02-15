removing
getGames: platform orderBy: orderBy mode: mode
	|pGames|
	pGames := games.
	pGames := self filterGames: pGames by: platform.
	pGames := self orderGames: pGames by: orderBy mode: mode.
	^pGames. 