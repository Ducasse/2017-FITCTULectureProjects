initialization
nextCharacterOnTurn
	| characterOnTurn |
	characterOnTurn := queue first.
	queue removeFirst; add: characterOnTurn.
	self announceAsReady