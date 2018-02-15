as yet unclassified
getFreeBlockAround: aIndex for: aPcmMovingBlock
	^ ((self getNeighbouringIndexes: aIndex) select: [ :each | (self getBlock: each) canGoThrough: aPcmMovingBlock ])
		asOrderedCollection