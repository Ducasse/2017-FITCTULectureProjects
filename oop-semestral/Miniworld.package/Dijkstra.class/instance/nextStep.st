methods
nextStep
	( (queue size > 0) & (found not) ) ifTrue: [ 
		Transcript show: 'here'; cr.
		" select the one with minimal distance "
		cur := queue first.
		queue removeFirst.
			
		(cur x = targetColumn & (cur y = targetRow)) ifTrue: [ 
			found := true.
			isRunning := false.
		].
			
		(tilemap getNeighborsRow: (cur y) column: (cur x)) do: [ :item |
			(item passable and: [ (cur distance + (item cost)) < (item distance) ]) ifTrue: [ 
				item distance: ((cur distance) + item cost).
				item heuristicDist: (self getHeuristicValue: item).
				queue add: item.
				item state: TileState discovered.
				pathMatrix at: (item y + 1) at: (item x + 1) put: ((cur x),(cur y)). " save from which tile we came "
			].
		].
	
		(queue size > 0) ifTrue: [
			cur := queue first.
			lastProcessed ifNotNil: [
				lastProcessed state: TileState processed.
			].
			cur state: TileState processing.
			lastProcessed := cur.
		].
	
		self isSetEnd ifTrue: [
			(tilemap x:targetColumn y:targetRow) state: TileState end.
		]
	
	]; ifFalse: [ 
		isRunning := false.
		self isSetEnd ifTrue: [
			found := (((tilemap x: targetColumn y: targetRow) distance) = (Float infinity)) not.
		]
	 ].
	^ (isRunning)