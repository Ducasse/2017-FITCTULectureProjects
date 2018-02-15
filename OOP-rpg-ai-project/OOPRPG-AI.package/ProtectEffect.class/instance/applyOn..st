applying
applyOn: aUnit
	"comment stating purpose of message"

	target := aUnit.
	target takeDamageDeleg: (ProtectTakeDamage withDefender: defender withOwner: target forEffect: self).
	timer := 0.
	target log: 'applying Protect from ', defender nickname.