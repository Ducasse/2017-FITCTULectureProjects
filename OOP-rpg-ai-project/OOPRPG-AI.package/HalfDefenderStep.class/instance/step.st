stepping and presenter
step
	|unitResolver target|
	unitResolver :=UnitResolver uniqueInstance.
	
	(defend isNil)
		ifTrue: [ defend := true].
		
	(defend)
		ifTrue: [  
			defend := false.
			(self anyOtherFriendAlive ) 
				ifTrue: [ ownedBy guard: self getRandomFriend ]
				ifFalse: [ ownedBy attack: self getRandomEnemy ].			
		]
		ifFalse: [ 
			defend := true.
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
		].