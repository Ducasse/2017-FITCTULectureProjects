stepping and presenter
step
	|spell|
	spell := self getRandomSpellToCast.
	(spell isNil)
		ifTrue: [ 
			(self anyOtherFriendAlive)
				ifTrue: [ self meditate ]
				ifFalse: [ ownedBy attack: self getRandomEnemy].
			]
		ifFalse: [ 
			(spell = Karma)
				ifTrue: [ ownedBy castSpell: spell onTarget: self getRandomEnemy]
				ifFalse: [ ownedBy castSpell: spell onTarget: self getRandomFriend].
			].