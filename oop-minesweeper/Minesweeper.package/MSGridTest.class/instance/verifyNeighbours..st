private
verifyNeighbours: aGrid
	aGrid do: [ :field |
		| fc xEdge yEdge |
		fc := field coordinates.
		xEdge := yEdge := false.
		((fc x = 1) or: (fc x = aGrid rowCount))
			ifTrue: [ xEdge := true	].
		
		((fc y = 1) or: (fc y = aGrid columnCount))
			ifTrue: [ yEdge := true	].
		
		(xEdge and: yEdge)
			ifTrue: [ self assert: (field neighbours size) equals: 3 ]
			ifFalse: [
				((xEdge and: (yEdge not)) or: ((xEdge not) and: yEdge))
					ifTrue: [ self assert: (field neighbours size) equals: 5 ]
					ifFalse: [  self assert: (field neighbours size) equals: 8 ].
			].
	
		field neighbours do: [ :n |
			| nc |
			nc := n coordinates.
			self assert: 
			(
				(
					(
						(fc x = (nc x - 1))
						or:
						(fc x = (nc x + 1))
					) 
					and: 
					(
						(fc y = (nc y)) or: 
							(
								(fc y = (nc y - 1))
								or:
								(fc y = (nc y + 1))
							)
						)
				)
				or: 
				(
					(fc x = nc x)
					and:
					(
						(fc y = (nc y - 1))
						or:
						(fc y = (nc y + 1))
					)
				)
			).
			self assert: 
			(
				(
					(
						(fc y = (nc y - 1))
						or:
						(fc y = (nc y + 1))
					) 
					and: 
					(
						(fc x = (nc x)) or: 
							(
								(fc x = (nc x - 1))
								or:
								(fc x = (nc x + 1))
							)
						)
				)
				or: 
				(
					(fc y = nc y)
					and:
					(
						(fc x = (nc x - 1))
						or:
						(fc x = (nc x + 1))
					)
				)
			).
		]
	]