tests
testGetEnemyTeam
	| battle u1 u2 u3 team2 |
	battle := Battle new.
	u1 := Unit withName: 'Gandalf the Grey'.
	u1 stepDeleg: (RandomAttackStep withOwner: u1).
	u2 := Unit withName: 'Saruman'.
	u2 stepDeleg: (RandomAttackStep withOwner: u2).
	u3 := Unit withName: 'Balrog'.
	u3 stepDeleg: (RandomAttackStep withOwner: u3).
	
	battle addUnit: u1 toTeam: 1.
	battle addUnit: u2 toTeam: 2.
	battle addUnit: u3 toTeam: 2.
	
	team2 := battle getEnemyTeam: u1.
	self assert: team2 size equals: 2.
	self assert: (team2 first == u2).
	self assert: (team2 second == u3).
	
	self assert: (battle getEnemyTeam: u2) first equals: u1.