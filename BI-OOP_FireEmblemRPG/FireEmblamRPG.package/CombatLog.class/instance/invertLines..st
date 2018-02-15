as yet unclassified
invertLines: aLines
	| result |
	result := OrderedCollection new.
	aLines lines do: [ :each | result addFirst: each ].
	^result