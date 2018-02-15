notifications
notifySquaresHighlightOFF
	| reachableSquare squareWhereStanding|
	"reachableSquare := self reachableMoveSquaresForCurrentUnit."
	squareWhereStanding := unitList onTurn square.
	"reachableSquare remove: squareWhereStanding."
	"reachableSquare := reachableSquare select: [ :aSquare| aSquare getObject amIUnit not ]."
	
	"self halt: 'higlightOFF'."
	highlightSquares do: [ :eachSquare |
		eachSquare notifyHighlightOFF ].
	
	highlightSquares removeAll.