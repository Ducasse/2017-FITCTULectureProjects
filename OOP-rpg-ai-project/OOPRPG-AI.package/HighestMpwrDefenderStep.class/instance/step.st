stepping and presenter
step
	|target|

	(self anyOtherFriendAlive)
		ifTrue: [
			target := self getRandomFriend.
			self getFriendlyTeam do: [:each | 
			(each mpwr > target mpwr) 
				ifTrue: [target := each].
	 		].
			ownedBy guard: target.
		 ]
		ifFalse: [ownedBy attack: self getRandomEnemy].