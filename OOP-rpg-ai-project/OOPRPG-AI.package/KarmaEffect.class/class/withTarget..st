as yet unclassified
withTarget: aUnit
	"comment stating purpose of message"
	| newGuard |
	newGuard := self new.
	newGuard target: aUnit.
	^ newGuard.