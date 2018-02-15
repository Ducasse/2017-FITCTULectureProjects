tests
testIsTeamDead
	| boj unit1 |

	boj := Battle new.
	
	unit1 := Unit new.
	self assert: (boj isTeamDead: 2).
	self assert: (boj isTeamDead: 0).
	self assert: (boj isTeamDead: 4).
	boj addUnit: unit1 toTeam: 1.
	UnitResolver myTeam: (boj team1) enemyTeam: (boj team2).
	self assert: (boj isTeamDead: 1) not.
	unit1 hp: 0.
	unit1 update.
	self assert: (boj isTeamDead: 1)