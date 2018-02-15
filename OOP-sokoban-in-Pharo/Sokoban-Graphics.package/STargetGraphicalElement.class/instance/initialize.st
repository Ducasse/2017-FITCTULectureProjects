initialization
initialize
	super initialize.
	empty := SRawEmptyTargetGraphicalElement new.
	withSoko := SRawSokobanOnTargetGraphicalElement new.
	withBox := SRawBoxOnTargetGraphicalElement new.
	
	self addChild: empty.
	self addChild: withSoko.
	self addChild: withBox.
	
	withSoko visibility: BlVisibility hidden.
	withBox visibility: BlVisibility hidden	 