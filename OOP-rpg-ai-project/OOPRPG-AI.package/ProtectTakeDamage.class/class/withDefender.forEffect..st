as yet unclassified
withDefender: aUnit forEffect: aEffect
	"comment stating purpose of message"

	| tmp |
	tmp := self new.
	tmp defender: aUnit.
	tmp effect: aEffect.
	^ tmp.