as yet unclassified
move: aGame to: aList
	self == aList ifFalse: [ 
	self removeGame: aGame.
	aList addGame: aGame
		 ]