visualization
gtInspectorBoard: composite
	<gtInspectorPresentationOrder: 30>
	
	^ composite table
		title: 'Tile';
		
		display: [ 
			| associations |
			
			associations := {} asOrderedCollection.
			
			"Coordinate"
			associations add: ('[x:y]' -> ('[', (self getCoordinate x) asString , ':', (self getCoordinate y) asString, ']')).
			
			"Type"
			(self isTileEmpty) 	ifTrue: [associations add: ('Type' -> 'Empty'	)].
			(self isTileMine) 		ifTrue: [associations add: ('Type' -> 'Mine'	)].
			(self isTileNumber)	ifTrue: [associations add: ('Type' -> 'Number')].
			
			"Properties"
			associations add: ('Opened' -> self isOpened ).
			associations add: ('Marked' -> self isMarked ).
			
			associations
			];
		
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: [ :each | each value printString ];
		send: #value.