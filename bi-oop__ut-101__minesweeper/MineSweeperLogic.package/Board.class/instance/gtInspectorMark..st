visualization
gtInspectorMark: composite
	<gtInspectorPresentationOrder: 31>
	
	| row str tile |
	row := OrderedCollection new.
	
	1 to: self y do: [ :inY |
		str := ''.
		1 to: self x do: [ :inX |
			"Decide for each Tile which type it is"
			tile := self getTileAtX: inX Y: inY.
			(tile isMarked)  
				ifTrue: [ str := str, '  M ' ]
				ifFalse: [ str := str, '  _  ' ].
			].
		row add: str.
		].
	
	^ composite table 
		title: 'Mark';
		
		display: [ 
			| associations |
			associations := {} asOrderedCollection.
			
			1 to: self y do: [ :inY |
				associations add: inY -> (row at: inY).
				].
			associations
			];
		
		"column: 'Row' evaluated: #key;"
		column: 'Marked Tiles' evaluated: [ :each | each value printString ];
		send: #value.