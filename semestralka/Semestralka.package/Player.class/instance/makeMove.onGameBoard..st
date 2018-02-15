GameRPG
makeMove: aSquare onGameBoard: aGameBoard
	Transcript
		show: self playerName;
		show: (' - ' , self race) ;
		show: ' click on' ;
		show: aSquare getPosition asString ; cr.
	aGameBoard moveCurrentUnitToSquare: aSquare.
	
	aGameBoard printOnTranscript.
	
	self notifyEndOfPlayerMove .