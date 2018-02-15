instance creation
setRandomImpassableTerrain
	|aNumber|
	aNumber := (1 to: 4) atRandom.
	aNumber == 1 ifTrue: [ ^ Tree new. ].
	aNumber == 2 ifTrue: [ ^ Rock new. ].
	aNumber == 3 ifTrue: [ ^ Sand new. ].
	aNumber == 4 ifTrue: [ ^ Water new. ].