as yet unclassified
createBoard
	self extent: GameTileElement defaultSize * (model getSize + (1@1)) + ((5 @ 5) * (model getSize)).
	self background: Color black.