children add/remove
addChild: anItem
	anItem size: (self height - 20) @ (self height - 20).
	anItem margin: (0 @ 0 extent: 10 @ 0).
	super addChild: anItem