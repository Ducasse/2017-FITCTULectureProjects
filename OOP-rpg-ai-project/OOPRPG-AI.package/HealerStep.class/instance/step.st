stepping and presenter
step
	|target friendWithDebuff|
	self getFriendlyTeam do: [ :each |
		(each hasDebuff) ifTrue: [ friendWithDebuff := each ]		
	].
	((friendWithDebuff isNil not) and: (ownedBy mp >= CureDebuff manacost))
		ifTrue: [ ownedBy castSpell: CureDebuff onTarget: friendWithDebuff  ]
		ifFalse: [  
			((ownedBy mp >= Heal manacost) and: (self anyOtherFriendAlive ))
				ifFalse: [ownedBy attack: self getRandomEnemy ]
				ifTrue: [ 
					target := self getRandomFriend.
					self getFriendlyTeam do: [ :each |
						(each hp < target hp)
							ifTrue: [ target:= each ].
						].	
					ownedBy castSpell:	 Heal onTarget: target.
				]. 			
			
			].
