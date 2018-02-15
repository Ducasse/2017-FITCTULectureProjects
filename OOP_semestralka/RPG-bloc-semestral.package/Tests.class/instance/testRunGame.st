tests
testRunGame
|board |
	Transcript open; clear.
	board := GameBoard new.
	
	board.
	
"
^ BlElement new
		size: 400@200;
		relocate: 100 @ 100;
		geometry: (BlRectangle cornerRadius: 10);
		background: self backgroundWithImageAndColor;
		yourself"
		