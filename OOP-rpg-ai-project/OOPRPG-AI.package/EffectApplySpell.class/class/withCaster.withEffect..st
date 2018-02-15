as yet unclassified
withCaster: aUnit withEffect: anEffect
	"comment stating purpose of message"

	| tmp |
	tmp := super withCaster: aUnit.
	tmp effect: anEffect.
	^ tmp.