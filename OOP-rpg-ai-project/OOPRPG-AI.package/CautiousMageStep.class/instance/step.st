stepping and presenter
step
	|spell target|
	spell := self getRandomSpellToCast.
	(spell isNil)
		ifTrue: [ 
			(self anyOtherFriendAlive)
				ifTrue: [ ownedBy guard: ownedBy]
				ifFalse: [ ownedBy attack: self getRandomEnemy].
			]
		ifFalse: [ 
			(spell = Karma)
				ifTrue: [ ownedBy castSpell: spell onTarget: self getRandomEnemy ]			
				ifFalse: [
					(self anyOtherFriendAlive)
						ifTrue: [  
							target := self getRandomFriend.
							[(target isNil) or: (target = ownedBy)] whileTrue: [ target := self getRandomFriend].						
							ownedBy castSpell: spell onTarget: target.			
						]
						ifFalse: [ ownedBy attack: self getRandomEnemy].
				]
			].