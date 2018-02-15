accessing
level1
	|champ champ1 champ2 champ3 champE1 champE2 table row|
	
	champ := Healer new.
	champ team: 1.
	champ1 := Tank new
		team:2.
	champ2 := Champion new imgPath: 'teammate.png'.
	champ3 := Champion new imgPath: 'teammate.png'.
	champE1 := Champion new imgPath: 'enemy.png'.
	champE2 := Champion new imgPath: 'enemy.png'.
	table := OrderedCollection new.
	
	1 to: x do: [ :anX |
		row := OrderedCollection new.
		1 to: y do: [ :anY |
			row add: (FieldStruct new x: anX; y: anY; type: Enum forest).
		].
		table add: row.
	].

	1 to: x do: [ :anX | ((table at: anX) at: 4) type: Enum road ].
	2 to: x do: [ :anX | ((table at: anX) at: 3) type: Enum wall ].

	((table at: 11) at: 4) type: Enum teammate; champion: champ1.
	((table at: 1) at: 2) type: Enum road.
	((table at: 2) at: 5) type: Enum road.
	((table at: 1) at: 3) type: Enum road.
	((table at: 1) at: 4) type: Enum me; champion: champ.
	((table at: 1) at: 5) type: Enum teammate; champion: champ2.
	((table at: 1) at: 6) type: Enum road.
	((table at: 1) at: 7) type: Enum teammate; champion: champ3.
	((table at: 1) at: 8) type: Enum enemy; champion: champE1.
	((table at: 12) at: 4) type: Enum enemy; champion: champE2.
	
	^ table
	