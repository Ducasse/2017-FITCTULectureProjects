initialization
initialize
	super initialize.
	empty := SRawEmptyFloorShapeGraphicalElement new.
	withSoko := SRawSokobanOnFloorShapeGraphicalElement new.
	withBox := SRawBoxOnFloorShapeGraphicalElement new.
	
	self addChild: empty.
	self addChild: withSoko.
	self addChild: withBox.
	 
	withSoko visibility: BlVisibility hidden.
	withBox visibility: BlVisibility hidden	 