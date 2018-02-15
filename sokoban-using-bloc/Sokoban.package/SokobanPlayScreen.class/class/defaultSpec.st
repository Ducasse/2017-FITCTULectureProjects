specs
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :row | 
			row
				add: #labelMoves;
				add: #exitButton;
				add: #resetButton;
				add: #undoButton;
				add: #redoButton ]
			height: 30;
		newRow: [ :row | row add: #playGrid ]