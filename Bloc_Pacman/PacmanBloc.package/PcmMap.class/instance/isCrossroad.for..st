accessing
isCrossroad: aIndex for: aPcmMovingBlock
	^ (self getFreeBlockAround: aIndex for: aPcmMovingBlock) size > 2 