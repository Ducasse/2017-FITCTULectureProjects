stepping and presenter
step
	(bro isNil and: (self anyOtherFriendAlive)) ifTrue: [
		[(bro isNil) or: (bro = ownedBy)] whileTrue: [ bro := self getRandomFriend].
	].

	(bro isNil not and: bro dead not)
		ifTrue: [ ownedBy guard: bro ]
		ifFalse: [ 
			(bro isNil not and: bro killedBy dead not)
				ifTrue: [ ownedBy attack: bro killedBy ]
				ifFalse: [ ownedBy attack: self getRandomEnemy ]		
		].