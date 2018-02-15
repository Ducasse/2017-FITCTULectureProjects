actions
countAdjacentMines
	neighbours do: [ :neighbour |
		(neighbour isMine)
			ifTrue: [ self increaseNumber ]
	]