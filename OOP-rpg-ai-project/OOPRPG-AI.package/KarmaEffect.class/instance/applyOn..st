applying
applyOn: aUnit
	"comment stating purpose of message"

	caster := aUnit.
	caster takeDamageDeleg: (KarmaTakeDamage withTarget: target withOwner: caster forEffect: self).
	timer := 1.
	caster log: 'applying Karma link to ', target nickname.