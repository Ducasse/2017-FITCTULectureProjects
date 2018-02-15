stepping and presenter
step
	(self anyOtherFriendAlive) ifTrue: [ ownedBy guard: self getRandomFriend ]
	ifFalse: [ ownedBy attack: self getRandomEnemy].