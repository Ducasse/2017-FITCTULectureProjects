mouse handlers
clickEvent: anEvent
	| clickedSquare |
	clickedSquare := (anEvent currentTarget) model.
	gameBoard notifyClickSquare: clickedSquare.

"	Transcript 
		show: 'you clicked at position: ';
		show: clickedSquare getPosition asString;
		cr."