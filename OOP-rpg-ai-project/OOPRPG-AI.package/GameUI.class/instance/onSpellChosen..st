as yet unclassified
onSpellChosen: aSpell
	| targetList player |
	player := battle currentUnit.
	ListModel allInstances do: [ :list | list delete ].
	targetList := ListModel new.
	targetList
		items: ((aSpell targetTeam = 1) ifTrue: [ battle getFriendlyTeam: player ] 
		ifFalse: [ battle getEnemyTeam: player ]);
		whenSelectedItemChanged: [ :target | 
			target ifNotNil: [ 
				(player mp >= aSpell manacost) ifTrue: [ battle onCastSpell: aSpell to: target  ]
				ifFalse: [ UIManager default alert: 'Not enough mana to cast ' , aSpell title , '!' ]
				].
			targetList delete ];
		displayBlock: [ :unit | unit nickname ];
		title: 'Choose spell target'.
	targetList openWithSpec