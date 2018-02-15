mouse handlers
mouseDownEvent: anEvent
	MineSweeper uniqueInstance
		onClickEvent: anEvent button
		coord: anEvent currentTarget coord