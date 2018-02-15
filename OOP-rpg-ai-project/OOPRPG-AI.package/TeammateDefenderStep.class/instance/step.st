stepping and presenter
step
	|target|
	
	(self anyOtherFriendAlive) ifTrue: [ 
		target := self getRandomFriend .
		[ target = ownedBy ] whileTrue: [ target := self getRandomFriend].
		ownedBy guard: target.
		]
	ifFalse: [ ownedBy attack: self getRandomEnemy].