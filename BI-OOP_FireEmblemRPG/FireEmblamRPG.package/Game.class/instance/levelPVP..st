accessing
levelPVP: aChampList
	|table row|
	
	table := OrderedCollection new.
	
	1 to: x do: [ :anX |
		row := OrderedCollection new.
		1 to: y do: [ :anY |
			row add: (FieldStruct new x: anX; y: anY; type: Enum road).
		].
		table add: row.
	].

	1 to: x do: [ :anX | ((table at: anX) at: 1) type: Enum wall ].
	1 to: x do: [ :anX | ((table at: anX) at: 12) type: Enum wall ].
	4 to: 9 do: [ :anX | ((table at: anX) at: 2) type: Enum wall ].
	4 to: 9 do: [ :anX | ((table at: anX) at: 11) type: Enum wall ].
	6 to: 7 do: [ :anX | ((table at: anX) at: 3) type: Enum wall ].
	6 to: 7 do: [ :anX | ((table at: anX) at: 10) type: Enum wall ].

	((table at: 4) at: 6) type: Enum forest.
	((table at: 2) at: 8) type: Enum forest.
	((table at: 7) at: 8) type: Enum forest.
	((table at: 8) at: 4) type: Enum forest.
	((table at: 10) at: 4) type: Enum forest.

	((table at: 12) at: 4) type: Enum teammate; champion: (aChampList at: 1).
	((table at: 12) at: 6) type: Enum teammate; champion: (aChampList at: 2).
	((table at: 12) at: 8) type: Enum teammate; champion: (aChampList at: 3).
	((table at: 11) at: 6) type: Enum teammate; champion: (aChampList at: 4).
	((table at: 1) at: 4) type: Enum enemy; champion: (aChampList at: 5).
	((table at: 1) at: 6) type: Enum enemy; champion: (aChampList at: 6).
	((table at: 1) at: 8) type: Enum enemy; champion: (aChampList at: 7).
	((table at: 2) at: 6) type: Enum enemy; champion: (aChampList at: 8).
	
	^ table
	