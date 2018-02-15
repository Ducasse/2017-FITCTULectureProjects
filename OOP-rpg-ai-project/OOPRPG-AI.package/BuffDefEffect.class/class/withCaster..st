as yet unclassified
withCaster: aUnit

	"comment stating purpose of message"
	| newCaster |
	newCaster := super withCaster: aUnit.
	newCaster stat: [ :target :x | target def: target def + x ].
	newCaster statChange: aUnit mpwr.
	^ newCaster.