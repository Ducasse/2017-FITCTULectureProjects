initialization
moveCharacterTo: position
	| characterOnTurn |
	characterOnTurn := fightOrderQueue getCharacterOnTurn.
	(battleMap moveCharacter: characterOnTurn atPosition: position)
		ifFalse: [ ^ self ].
	gameStateManager finishMovement