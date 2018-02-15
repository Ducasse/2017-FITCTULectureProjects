as yet unclassified
withDefender: aUnit withOwner: anOwner forEffect: aEffect 
	"comment stating purpose of message"

	| tmp |
	tmp := self withOwner: anOwner.
	tmp defender: aUnit.
	tmp effect: aEffect.
	^ tmp.