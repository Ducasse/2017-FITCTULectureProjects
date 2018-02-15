checkingSetup
checkForCorrectSetup	
	Transcript clear.
	Transcript open.
	
	mapFields do: [ :x | 
		x do: [ :y | 
			y checkForCorrectSetup
		 ]	 
		 ].
	
	variables checkForCorrectSetup.
	player1 checkForCorrectSetup.
	player2 checkForCorrectSetup.
	
	Transcript show: 'If you see only this message, then no errors were detected'.