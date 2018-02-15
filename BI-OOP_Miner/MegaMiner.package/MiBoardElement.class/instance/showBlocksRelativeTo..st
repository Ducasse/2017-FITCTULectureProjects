initialization
showBlocksRelativeTo: aMinerPosition
	"I calculate which elements should be shown , then return position of miner in these calculated coordinates, to redraw map call remakeBoard"
	absoluteMinerDifference := aMinerPosition - currentCenter.
	relativeCenter := relativeCenter + absoluteMinerDifference.
	currentCenter := aMinerPosition.
	self calculateX: aMinerPosition x.
	self calculateY: aMinerPosition y.
	^ relativeCenter