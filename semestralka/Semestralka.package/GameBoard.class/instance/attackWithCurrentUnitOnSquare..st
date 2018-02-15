gameLogic
attackWithCurrentUnitOnSquare: attackOnSquare
	| attacker defender |
	attacker := unitList onTurn.
	defender := attackOnSquare getObject.
	(attacker = defender)
		ifFalse: [ (defender getHitBy: attacker attack)
				ifFalse: [ "defender died"
					defender square unitMovedAway.
					defender unitDied.
					unitList remove: defender ifAbsent: [ ^ Error ].
					 ]
				ifTrue: [ (attacker getHitBy: defender attack)
						ifFalse: [ "attacker died"
							attacker square unitMovedAway.
							attacker unitDied.
							unitList remove: attacker ifAbsent: [ ^ Error ].
							 ] ] ]