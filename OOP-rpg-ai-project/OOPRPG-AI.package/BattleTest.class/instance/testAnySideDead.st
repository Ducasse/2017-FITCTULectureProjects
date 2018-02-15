tests-as yet unclassified
testAnySideDead
	| battle u1 u2 |
	battle := Battle new.
	u1 := Unit withName: 'Frodo'.
	u1 stepDeleg: (RandomAttackStep withOwner: u1).
	u2 := Unit withName: 'Sauron'.
	u2 stepDeleg: (RandomAttackStep withOwner: u2).
	
	battle addUnit: u1 toTeam: 1.
	battle addUnit: u2 toTeam: 2.
	UnitResolver myTeam: (battle team1) enemyTeam: (battle team2).
	
	self assert: battle anySideDead not.
	battle startAIFight.
	self assert: battle anySideDead.