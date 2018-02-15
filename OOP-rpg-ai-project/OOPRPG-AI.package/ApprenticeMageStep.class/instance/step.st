stepping and presenter
step
	|roll spell|
	roll := (1 to: 10) atRandom.
	spell := self getRandomSpellToCast.
	((roll <= 4) and: spell notNil)
		ifTrue: [ 
			(spell = Slow )
				ifTrue: [ ownedBy castSpell: spell onTarget: self getRandomEnemy]
				ifFalse: [ ownedBy castSpell: spell onTarget: self getRandomFriend]
			]
		ifFalse: [ ownedBy attack: self getRandomEnemy].