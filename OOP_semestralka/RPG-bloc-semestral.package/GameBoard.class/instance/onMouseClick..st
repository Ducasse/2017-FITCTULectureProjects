events
onMouseClick: position
"Convert the point to the coordinates within array"
|indexX indexY tmp change|


	(player2 hasNoMonster)
	ifTrue: [ 
		(Transcript show: ((self textDatabase) messageByKeyword: 'WIN'); cr).
		   ^1.].

	(player1 hasNoMonster)
	ifTrue: [ 
		(Transcript show: ((self textDatabase) messageByKeyword: 'WIN'); cr).
   			^1.].
		

indexX := ((position x) / ((self variables) squareSize)) asInteger.
tmp := (position x) % ((self variables) squareSize).

(tmp > 0)
ifTrue: [ indexX := indexX + 1 ].

indexY := ((position y) / ((self variables) squareSize)) asInteger.
tmp := (position y) % ((self variables) squareSize).

(tmp > 0)
ifTrue: [ indexY := indexY + 1 ].


(self isOutOfRange: indexX Y: indexY)
ifTrue: [ ^self ].

"implement logic of click "
"Transcript show: 'You clicked on indexes ', indexX printString, ' ', indexY printString; cr."

change := (currentlyPlayingPlayer onMouseClick: indexX Y: indexY).

(currentlyPlayingPlayer hasMonsterMovementLeft)
ifFalse: [ "next player plays"
	self setNextTurn ].

(change)
ifTrue: [
	"Transcript show: 'graphics changed'; cr."
	self onSituationOnGameBoardChanged.].
