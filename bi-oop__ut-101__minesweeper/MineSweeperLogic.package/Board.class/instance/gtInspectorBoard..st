visualization
gtInspectorBoard: composite
	<gtInspectorPresentationOrder: 30>
	
	| row str |
	row := OrderedCollection new.
	
	1 to: self y do: [ :inY |
		str := ''.
		1 to: self x do: [ :inX |
			"Decide for each Tile which type it is"
			str := (self getTileAtX: inX Y: inY) addInspectorSymbol: str.
			].
		row add: str.
		].
	
	^ composite table 
		title: 'Board';
		
		display: [ 
			| associations |
			associations := {} asOrderedCollection.
			
			1 to: self y do: [ :inY |
				associations add: inY -> (row at: inY).
				].
			associations
			];
		
		"column: 'Row' evaluated: #key;"
		column: 'Board' evaluated: [ :each | each value printString ];
		send: #value.