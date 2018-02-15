as yet unclassified
withCaster: aUnit

	"comment stating purpose of message"
	| newCaster |
	newCaster := super withCaster: aUnit.
	newCaster stat: [ :target :x | target ap: target ap + x ].
	newCaster statChange: -1.
	^ newCaster.