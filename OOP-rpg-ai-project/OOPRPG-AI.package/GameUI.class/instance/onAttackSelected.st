as yet unclassified
onAttackSelected
	| enemyList player |
	player := battle currentUnit.
	ListModel allInstances do: [ :list | list delete ].
	enemyList := ListModel new.
	enemyList
		items: (battle getEnemyTeam: player);
		whenSelectedItemChanged: [ :enemyUnit | 
			enemyUnit ifNotNil: [ battle onAttackSelected: enemyUnit ].
			enemyList delete ];
		displayBlock: [ :unit | unit nickname ];
		title: 'Choose attack target'.
	enemyList openWithSpec