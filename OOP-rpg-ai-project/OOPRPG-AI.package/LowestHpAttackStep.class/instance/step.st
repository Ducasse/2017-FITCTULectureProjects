stepping and presenter
step
	|target|
	target := self getRandomEnemy.
	self getEnemyTeam do: [:each | 
		(each hp < target hp) 
			ifTrue: [target := each].
	 ].

	ownedBy attack: target.