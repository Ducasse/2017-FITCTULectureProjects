gameControl
startGame
	||
	"Starts a game, sets a playing player, and sets the correct positions for all monsters"
	currentlyPlayingPlayer := player1.
	
	"add monster to players"
	player1 addMonster: ((self monsterDatabase) getMonsterClone: 'VAMPIRE').
	player1 addMonster: ((self monsterDatabase) getMonsterClone: 'VAMPIRE').
	
	player2 addMonster: ((self monsterDatabase) getMonsterClone: 'VAMPIRE').	
	player2 addMonster: ((self monsterDatabase) getMonsterClone: 'ZOMBIE').
	player2 addMonster: ((self monsterDatabase) getMonsterClone: 'MONK').
	
	"Player one will be at X position 1"
	self positionsForAllMonsterForPlayer: player1 XPositionForAll: 1.
	
	"Player one will be at X position [end of battlefield ... maximum X]"
	self positionsForAllMonsterForPlayer: player2 XPositionForAll: (self fieldsX).
	
	self setNextTurn.