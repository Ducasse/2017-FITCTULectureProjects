tests
testRandomTraitHumanBattle
	"comment stating purpose of message"

	| boj  |
	boj := Battle new.
	boj ui printEvent: '----- Starting 5v5 with Battle Test with Humans----'.
	
	boj addUnit: Unit randomAIDPS  toTeam: 1.
	boj addUnit: Unit randomAIDPS  toTeam: 1.
	boj addUnit: Unit randomAIMage  toTeam: 1.
	boj addUnit: Unit randomAIMage  toTeam: 1.
	boj addUnit: Unit randomAITank  toTeam: 1.
	boj addUnit: Unit randomRogue  toTeam: 2.
	boj addUnit: Unit randomWarrior  toTeam: 2.
	boj addUnit: Unit randomMage toTeam: 2.
	boj addUnit: Unit randomMage  toTeam: 2.
	boj addUnit: Unit randomTank  toTeam: 2.

	boj startHumanBattle.