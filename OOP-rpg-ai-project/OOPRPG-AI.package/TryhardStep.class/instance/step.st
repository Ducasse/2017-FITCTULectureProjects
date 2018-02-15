stepping and presenter
step
	|unitResolver target|
	unitResolver :=UnitResolver uniqueInstance.
	target := unitResolver getEnemyHealer.
	
	(target isNil) 
		ifTrue: [
			target := unitResolver getEnemyMage.
			(target isNil)
				ifTrue: [  
					target := self getRandomEnemy.
					self getEnemyTeam do: [:each | 
						(each hp < target hp) 
							ifTrue: [target := each].
						 ].
				].
		 ].
	ownedBy attack: target.