as yet unclassified
withCaster: aUnit

	"comment stating purpose of message"
	| newCaster |
	newCaster := self new.
	newCaster caster: aUnit.
	^ newCaster.