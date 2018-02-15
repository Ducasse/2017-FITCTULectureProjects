updating
update
	target logCr: 'Taking damage from poison...'.
	target takeDamage: damage from: caster.
	^ super update.