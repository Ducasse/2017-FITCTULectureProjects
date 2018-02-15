selfActions
takeDamage: aDmg from: aUnit
	"comment stating purpose of message"

	defender dead 
		ifTrue: [
					 effect remove. ownedBy takeDamage: aDmg from: aUnit.
				  ] 
		ifFalse: [ 
			defender hp: (defender hp - aDmg).
			defender log: 'protects ', ownedBy nickname, ' from ', aDmg asString, ' dmg.'
					]