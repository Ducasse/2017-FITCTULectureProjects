temporal for remove
attackMoveTemporary: aGame
	
	
	"something something"

aGame getActivePlayer.
Transcript show: ('ai ends move and next player is: ' , aGame activePlayer className) ; cr.
(aGame activePlayer className = 'PlayerAI') 
	ifTrue: [ aGame prepareMove ].