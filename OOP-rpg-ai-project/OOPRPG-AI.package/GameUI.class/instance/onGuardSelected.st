as yet unclassified
onGuardSelected
	| friendList player |
	player := battle currentUnit.
	ListModel allInstances do: [ :list | list delete ].
	friendList := ListModel new.
	friendList
		items: (battle getFriendlyTeam: player);
		whenSelectedItemChanged: [ :friend | 
			friend ifNotNil: [ battle onGuardSelected: friend ].
			friendList delete ];
		displayBlock: [ :unit | unit nickname ];
		title: 'Choose which unit to guard'.
	friendList openWithSpec