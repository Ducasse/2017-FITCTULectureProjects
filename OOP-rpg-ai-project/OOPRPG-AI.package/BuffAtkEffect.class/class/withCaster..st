as yet unclassified
withCaster: aUnit

	"comment stating purpose of message"
	| newCaster |
	newCaster := super withCaster: aUnit.
	newCaster stat: [ :target :x | target atk: target atk + x ].
	newCaster statChange: aUnit mpwr.
	^ newCaster.