removing
remove
	"comment stating purpose of message"

	target takeDamageDeleg: (TakeDamage withOwner: target).
	target log: 'removing Protect from ', defender nickname.
	super remove.
	