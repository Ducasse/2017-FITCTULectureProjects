initialization
fillWithTiles: aNumber

|element child|
 element := BlElement new
	layout: (BlGridLayout new cellSpacing: 4; columnCount: aNumber sqrt );
	size: ((aNumber sqrt + 1)* 50)@((aNumber sqrt +1)* 50);
	background: Color gray  .

	1 to: aNumber    do: [ :i|
		child := EmptyTile new .
		element addChild: child .
	 ].

	map := element .

