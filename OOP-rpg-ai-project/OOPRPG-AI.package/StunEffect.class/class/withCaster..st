as yet unclassified
withCaster: aUnit
	"comment stating purpose of message"
	| newGuard |
	newGuard := self new.
	newGuard caster: aUnit.
	^ newGuard.