specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :row | row add: #gameOutput ]
		origin: 0 @ 0 corner: 1 @ 0.7;
		newRow: [ :row | row add: #txtMyTeam; add: #txtEnemyTeam ]
		origin: 0 @ 0.7 corner: 1 @ 0.73;
		newRow: [ :row | row add: #myTeamOverview; add: #enemyTeamOverview ]
		origin: 0 @ 0.73 corner: 1 @ 0.9;
		newRow: [ :row | row add: #txtCurrentPlayer ]
		origin: 0 @ 0.9 corner: 1 @ 0.93;
		newRow: [ :row | row add: #btnAttack; add: #btnGuard; add: #btnSpell ; add: #btnTurn ]
		origin: 0 @ 0.93 corner: 1 @ 1;
		yourself