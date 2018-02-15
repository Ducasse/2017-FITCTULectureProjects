stepping and presenter
step
	|target|

	(self anyOtherFriendAlive)
		ifTrue: [
			target := self getRandomFriend.
			self getFriendlyTeam do: [:each | 
			(each hp < target hp) 
				ifTrue: [target := each].
	 		].
			ownedBy guard: target.
		 ]
		ifFalse: [ownedBy attack: self getRandomEnemy].