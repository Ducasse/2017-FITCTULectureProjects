tests
testPlayerHasNoMonsters
	"Removes monsters of both players and tests	 whether hasNoMonster returns correct value."
	|board player1 player2 playerMonster|
	board := GameBoard new.
	
	player1 := board player1.
	player2 := board player2.
	
	[(player1 allLivingMonsters) size > 0] 
		whileTrue: [ 
			playerMonster := player1 currentlyPlayingMonster.
			player1 removeMonster: playerMonster.
		].
	
	[(player2 allLivingMonsters) size > 0] 
		whileTrue: [ 
			playerMonster := player2 currentlyPlayingMonster.
			player2 removeMonster: playerMonster.
		].
	
	self assert: (player1 hasNoMonster & player2 hasNoMonster)