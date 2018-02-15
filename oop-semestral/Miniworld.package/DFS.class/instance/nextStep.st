methods
nextStep
	( (stack isNotEmpty) & (found not) ) ifTrue: [ 
		cur := stack last.
		stack removeLast.
	
		(tilemap getNeighborsRow: (cur y) column: (cur x)) do: [ :item |
			((item unvisited) & (item passable)) ifTrue: [
				stack addLast: item.	
				pathMatrix at: (item y + 1) at: (item x + 1) put: ((cur x),(cur y)). " save from which tile we came "
				
				(((item y) == targetRow) & ((item x) == targetColumn)) ifTrue: [ " mark as visited "
					found := true.	
					isRunning := false.
				]; ifFalse: [ 
					item state: TileState discovered.
				]
			]
		].
		(found not & (stack isNotEmpty)) ifTrue: [ 
			cur := stack last.
			lastProcessed ifNotNil: [
				lastProcessed state: TileState processed.
			].
			cur state: TileState processing.
			lastProcessed := cur.
		]
	];
	ifFalse: [ 
		found := false.
		isRunning := false.
	].
	^ (isRunning)