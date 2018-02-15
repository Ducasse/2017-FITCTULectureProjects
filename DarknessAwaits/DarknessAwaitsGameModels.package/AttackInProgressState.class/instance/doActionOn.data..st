initialization
doActionOn: aGameManager data: data
	( aGameManager attackTargetAt: data ) ifTrue: [ 
			(aGameManager gameStateManager) finishAttack.
			aGameManager endOfTurn. ]
	