initialization
initialize
	super initialize.
	empty := SRawEmptyFloorGraphicalElement new.
	withSoko := SRawSokobanOnFloorGraphicalElement new.
	withBox := SRawBoxOnFloorGraphicalElement new.
	
	self addChild: empty.
	self addChild: withSoko.
	self addChild: withBox.
	 
	withSoko visibility: BlVisibility hidden.
	withBox visibility: BlVisibility hidden	 