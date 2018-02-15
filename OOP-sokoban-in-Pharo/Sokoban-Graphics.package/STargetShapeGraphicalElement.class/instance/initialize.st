initialization
initialize
	super initialize.
	empty := SRawEmptyTargetShapeGraphicalElement new.
	withSoko := SRawSokobanOnTargetShapeGraphicalElement new.
	withBox := SRawBoxOnTargetShapeGraphicalElement new.
	
	self addChild: empty.
	self addChild: withSoko.
	self addChild: withBox.
	
	withSoko visibility: BlVisibility hidden.
	withBox visibility: BlVisibility hidden	 