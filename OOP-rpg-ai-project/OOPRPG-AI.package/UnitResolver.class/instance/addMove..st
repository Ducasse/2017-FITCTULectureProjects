updating
addMove: aMove

| eGUnit |

aMove newRound ifTrue: [ 
		self newRound.
	] ifFalse: [ 
		(self isUnitMine: (aMove unit))
			ifTrue: [
				self manageFriendlyUnit: (aMove unit)  
				] ifFalse: [ 
					eGUnit := self getGenericUnit: (aMove unit). 
					eGUnit ifNil: [ ^ self].
					eGUnit moved.
					"TODO manage nemy unit"
					self manageEnemySpeed: eGUnit.
					(aMove isSpellcast) ifTrue: [ 
							self manageEnemySpellcast: eGUnit move: aMove. 
						 ] ifFalse: [ 
					(aMove isAttack) ifTrue: [ 
							self manageEnemyAttack: eGUnit move: aMove. 
						 ] ifFalse: [ 
					(aMove isGuard) ifTrue: [ 
							self manageEnemyGuard: eGUnit move: aMove. 
						 ]]]
				 ].	
	].