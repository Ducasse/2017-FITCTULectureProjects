accesing
attackTargetAt: targetPosition
	| characterOnTurn defender|
	characterOnTurn := fightOrderQueue getCharacterOnTurn.
	defender := battleMap getCharacterAtPosition: targetPosition.
	defender ifNil: [ self gameLog addLog: 'There is no character to attack'. ^ false ].
	 
	(battleMap isPosition: characterOnTurn position
				  in: characterOnTurn attackRange
				  to: targetPosition)
		ifTrue: [
			battleManager attackWith: characterOnTurn on: defender.
			 ^ true
			]
		ifFalse: [ self gameLog addLog: 'Character is too far from target'. ^ false ]