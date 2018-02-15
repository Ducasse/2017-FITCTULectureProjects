stepping and presenter
step
	|target|
	
	((ownedBy mp >= Heal manacost) and: (self anyOtherFriendAlive))
		ifFalse: [ownedBy attack: self getRandomEnemy]
		ifTrue: [ 
			target := self getRandomFriend.
			self getFriendlyTeam do: [ :each |
				(each hp > target hp)
					ifTrue: [ target:= each ].
				].	
			ownedBy castSpell:	 Heal onTarget: target.
		].