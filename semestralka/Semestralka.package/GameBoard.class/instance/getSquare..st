accessing
getSquare: aPoint
"returns a square of gameboard of given position. If the square is not present on the board, returns nil"
	^ (board at: aPoint ifAbsent: nil)