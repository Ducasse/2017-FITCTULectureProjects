initialization
createBoard
	((MiBlockColumnCount+2) * (MiBlockRowCount+2)) timesRepeat: [ self addChild: (self newBlockElement)].
	self remakeBoard