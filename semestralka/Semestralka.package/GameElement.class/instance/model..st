accesing
model: aModel
	super model: aModel.
	self addChild: (GameBoardElement forModel: aModel).