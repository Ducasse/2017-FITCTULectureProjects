actions
interact: aMiner withBlock: aPosition
	"Interacts with the block at the given position."

	^ (self at: aPosition) interact: aMiner