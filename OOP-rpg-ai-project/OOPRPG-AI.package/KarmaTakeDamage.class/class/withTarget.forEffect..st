as yet unclassified
withTarget: aUnit forEffect: aEffect
	"comment stating purpose of message"

	| tmp |
	tmp := self new.
	tmp target: aUnit.
	tmp effect: aEffect.
	^ tmp.