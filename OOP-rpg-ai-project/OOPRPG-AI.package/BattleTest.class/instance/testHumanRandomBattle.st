tests
testHumanRandomBattle
	| boj u1 u2 v1 v2 |
	boj := Battle new.
	boj ui open.
	boj ui printEvent: '----- Starting 2v2 with Random Units Test----'.
	
	"jednotka A ma 2 akce za kolo, ale mensi utok a obranu."
	u1 := Unit randomAIDPS.


	u2 := Unit randomAITank.
	v1 := Unit randomMage.
	v1 nickname: 'Adolf'.
	v2 := Unit randomRogue.
	v2 nickname: 'Ninel'.

	boj addUnit: u1 toTeam: 1.
	boj addUnit: u2 toTeam: 1.
	boj addUnit: v1 toTeam: 2.
	boj addUnit: v2 toTeam: 2.
	UnitResolver reset.
	UnitResolver myTeam: (boj team1) enemyTeam: (boj team2).
   boj ui mainWindow playerMode.
