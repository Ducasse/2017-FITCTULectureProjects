stepping and presenter
step
	(self anyOtherFriendAlive) ifTrue: [ ownedBy guard: ownedBy ]
	ifFalse: [ ownedBy attack: self getRandomEnemy].