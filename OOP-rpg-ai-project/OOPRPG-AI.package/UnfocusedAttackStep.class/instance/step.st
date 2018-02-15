stepping and presenter
step
	|newTarget|

	(lastTarget isNil)
		ifTrue: [ 
			lastTarget := self getRandomEnemy.
			ownedBy attack: lastTarget.
		]
		ifFalse: [ 
			(self getEnemyTeam size > 1) 
			ifFalse: [ 
				ownedBy attack: lastTarget.		
			]
			ifTrue: [
				newTarget := self getRandomEnemy. 
				[ newTarget = lastTarget ] whileTrue: [ newTarget := self getRandomEnemy ].
				ownedBy attack: newTarget.
				lastTarget := newTarget.
			]
		].