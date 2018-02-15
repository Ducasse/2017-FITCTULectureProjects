visualization
gtInspectorOpen: composite
	<gtInspectorPresentationOrder: 31>
	
	| row str tile |
	row := OrderedCollection new.
	
	1 to: self y do: [ :inY |
		str := ''.
		1 to: self x do: [ :inX |
			"Decide for each Tile which type it is"
			tile := self getTileAtX: inX Y: inY.
			(tile isOpened)  
				ifTrue: [ str := str, '  O ' ]
				ifFalse: [ str := str, '  _  ' ].
			].
		row add: str.
		].
	
	^ composite table 
		title: 'Open';
		
		display: [ 
			| associations |
			associations := {} asOrderedCollection.
			
			1 to: self y do: [ :inY |
				associations add: inY -> (row at: inY).
				].
			associations
			];
		
		"column: 'Row' evaluated: #key;"
		column: 'Opened Tiles' evaluated: [ :each | each value printString ];
		send: #value.