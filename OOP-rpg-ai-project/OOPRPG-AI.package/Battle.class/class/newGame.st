instance creation
newGame
	"Starts a new game."

	| boj  |
	boj := Battle new.
	boj ui printEvent: '----- Starting New 5v5 Battle----'.
	
	boj addUnit: Unit randomAIDPS  toTeam: 2.
	boj addUnit: Unit randomAIDPS  toTeam: 2.
	boj addUnit: Unit randomAIMage  toTeam: 2.
	boj addUnit: Unit randomAIMage  toTeam: 2.
	boj addUnit: Unit randomAITank  toTeam: 2.
	boj addUnit: Unit randomRogue  toTeam: 1.
	boj addUnit: Unit randomWarrior  toTeam: 1.
	boj addUnit: Unit randomMage toTeam: 1.
	boj addUnit: Unit randomMage  toTeam: 1.
	boj addUnit: Unit randomTank  toTeam: 1.

	boj startHumanBattle.