actions
uncoverNeighbours
	| markedNeighbours |
	markedNeighbours := 0.
	
	"Count the marked neighbours"
	neighbours do: [ :neighbour |
		(neighbour marked) ifTrue: [ markedNeighbours := markedNeighbours + 1 ]
	].
	
	"Left click the covered neighbours if the amount of neighbouring mines is the same as the number of marked neighbours"				
	(markedNeighbours = self number)
		ifTrue: [
			neighbours do: [ :neighbour | 
				(neighbour covered) ifTrue: [ neighbour leftClick ]
			]
		].