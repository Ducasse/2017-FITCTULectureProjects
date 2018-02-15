as yet unclassified
withTarget: aUnit withOwner: anOwner forEffect: aEffect 
	"comment stating purpose of message"

	| tmp |
	tmp := self withOwner: anOwner.
	tmp target: aUnit.
	tmp effect: aEffect.
	^ tmp.