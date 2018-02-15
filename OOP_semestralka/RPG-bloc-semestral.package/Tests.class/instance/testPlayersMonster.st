tests
testPlayersMonster
|board player1 player2|
	board := GameBoard new.
	player1 := board player1.
	player2 := board player2.
	
self assert: player1 allLivingMonsters size equals: 2.
self assert: player2 allLivingMonsters size equals: 3.
  