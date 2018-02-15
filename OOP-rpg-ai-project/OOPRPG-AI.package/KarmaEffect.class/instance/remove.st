removing
remove
	"comment stating purpose of message"

	caster takeDamageDeleg: (TakeDamage withOwner: caster).
	caster log: 'lost Karma link to ', target nickname.
	super remove.
	