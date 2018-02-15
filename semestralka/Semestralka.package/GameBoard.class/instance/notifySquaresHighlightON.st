notifications
notifySquaresHighlightON
	| reachableSquare squareWhereStanding|
	reachableSquare := self reachableMoveSquaresForCurrentUnit.
	squareWhereStanding := unitList onTurn square.
	"reachableSquare remove: squareWhereStanding."
	highlightSquares := reachableSquare select: [ :aSquare| aSquare getObject amIUnit not  ].

	"self halt: 'highlightON'."
	
	highlightSquares do: [ :eachSquare |
		eachSquare notifyHighlightON ].