tests
testRandomTraitAIBattle
	"comment stating purpose of message"

	| boj  |
	boj := Battle new.
	boj ui printEvent: '----- Starting 5v5 with Random AI Test----'.
	

	
	boj addUnit: Unit randomAIDPS  toTeam: 1.
	boj addUnit: Unit randomAIDPS  toTeam: 1.
	boj addUnit: Unit randomAIMage  toTeam: 1.
	boj addUnit: Unit randomAIMage  toTeam: 1.
	boj addUnit: Unit randomAITank  toTeam: 1.
	boj addUnit: Unit randomAIDPS  toTeam: 2.
	boj addUnit: Unit randomAIDPS  toTeam: 2.
	boj addUnit: Unit randomAIMage  toTeam: 2.
	boj addUnit: Unit randomAIMage  toTeam: 2.
	boj addUnit: Unit randomAITank  toTeam: 2.
   
	boj startAIFight.