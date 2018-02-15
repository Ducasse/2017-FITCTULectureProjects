properties
canMoveTo: indexX Y: indexY
	|gameBoard distance|
	(movementCurrent = 0)
	ifTrue: [ ^false ].
	
	gameBoard := self gameBoard.
	((gameBoard mapField: indexX Y: indexY) hasMonsta)
	ifTrue: [ ^false ].
	
	
   "todo, some logic, bfs or so"
	"If monster can move there"
	distance := ((gameBoard bfs: (positionWithinArray x) Y: (positionWithinArray y) tox: indexX toy:indexY) size) - 1.
	"we removed one because in BFS is also the staring point"
	
(movementCurrent < distance)
ifTrue: [ "No movement" 
	^false ].
^true.