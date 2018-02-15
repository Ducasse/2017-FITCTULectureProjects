interaction
causeMechanicalDamage: anAmount
	self health damage: (self components plate absorb: anAmount)