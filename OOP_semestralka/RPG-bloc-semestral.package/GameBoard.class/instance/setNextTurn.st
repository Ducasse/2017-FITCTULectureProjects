gameControl
setNextTurn
	
Transcript show: ((self textDatabase) messageByKeyword: 'NEXT_TURN'); cr.
	
	
(currentlyPlayingPlayer = player1)
	ifTrue: [ currentlyPlayingPlayer := player2 ]
	ifFalse: [ currentlyPlayingPlayer := player1 ].
	
currentlyPlayingPlayer onItIsYourTurn.
