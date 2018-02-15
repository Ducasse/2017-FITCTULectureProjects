listeners
listenedClickOnSquare: square
	(humanOnTurn & (self activeGameBoard  validMoveToSquare: square) & attackBoolean not)
		ifTrue:
			[ self humanOnTurn: false.
			self makeMoveOnTarget: square.
			self prepareAttack ].
	