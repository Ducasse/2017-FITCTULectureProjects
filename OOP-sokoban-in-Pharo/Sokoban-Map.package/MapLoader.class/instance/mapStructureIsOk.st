validation
mapStructureIsOk
	self countBlocks .
	^ ( self blocksCntsIsOk and: [ self mapBoundaryIsOk and: [ self bgNeighboursIsOk ]] ) .
