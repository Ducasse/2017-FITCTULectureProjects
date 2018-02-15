selfActions
takeDamage: aDmg from: aUnit
	"comment stating purpose of message"

	ownedBy hp: (ownedBy hp - aDmg).
	^ aDmg.