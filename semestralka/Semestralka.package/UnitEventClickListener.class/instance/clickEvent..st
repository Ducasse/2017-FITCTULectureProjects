mouse handlers
clickEvent: anEvent
	| clickedSquare |
	clickedSquare := (anEvent currentTarget) model square.
	gameBoard notifyClickUnit: clickedSquare.

"	Transcript 
		show: 'you clicked at position: ';
		show: clickedSquare getPosition asString;
		cr."