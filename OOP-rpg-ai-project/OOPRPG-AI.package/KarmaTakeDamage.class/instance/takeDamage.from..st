selfActions
takeDamage: aDmg from: aUnit
	"comment stating purpose of message"

	target dead 
		ifTrue: [
					 effect remove. ownedBy takeDamage: aDmg from: aUnit.
				  ] 
		ifFalse: [ 
			target hp: (target hp - aDmg).
			target log: 'Karma link to ', ownedBy nickname, ' transfers ', aDmg asString, ' dmg.'
					]