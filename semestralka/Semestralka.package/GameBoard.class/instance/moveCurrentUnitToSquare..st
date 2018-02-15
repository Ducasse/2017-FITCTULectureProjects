gameLogic
moveCurrentUnitToSquare: moveToSquare
	| moveFromSquare |
	
	"placing unit in Gameboard"
	"-----------------------------------"
	moveFromSquare := unitList onTurn square.
	moveFromSquare unitMovedAway.
	moveToSquare  unitMovedHere: unitList onTurn.
	
	"setting square to unit"
	"-----------------------------------"	
	unitList onTurn moveToSquare: moveToSquare. "in this line unit notify about moving itself"
	