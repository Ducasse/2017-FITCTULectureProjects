printing
printOnTranscriptInfo
	Transcript
		show: 'PLAYER on turn: ';
		show: unitList onTurn playerOwner playerName ; cr.
	Transcript 
		show: '---------------------' ; cr;
		show: '   **unitsLives**    '; cr;
		show: '---------------------' ; cr.
	unitList getList do: [ :eachUnit |
		Transcript
			show: eachUnit unitType className asString;
			show: ('has: ', eachUnit health asString, ' HP') ;
			show: (', at pos: ', eachUnit square getPosition asString); cr.
		 ].
	Transcript
		show: '=============================' ; cr.  
	
	
	
	