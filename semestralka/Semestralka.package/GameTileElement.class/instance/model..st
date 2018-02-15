accessing
model: aModel
	super model: aModel.
	self relocate: (model getPosition - (1@1)) * (self class defaultSize + (5 @ 5)).
	self addChild: self newImageElement.
	"model getObject isNotNil ifTrue: [ self addChild: (GameTileUnit model: model). ]."
	
	"  --------------------------------------------------------------"
	model highlightAnnouncer when: HighlightSquareOnAnnouncement do: [
		"Transcript show: 'highlighON: ', model getPosition asString. Transcript cr. "
		self relocate: (model getPosition - (1@1)) * (self class defaultSize + (5 @ 5)).
		self addChild: (GameTileSeletion model: model). 
		].
	
	"	--------------------------------------------------------------"
	model highlightAnnouncer when: HighlightSquareOffAnnouncement do: [
		"Transcript show: 'highlighOFF: ', model getPosition asString. Transcript cr. "
		self relocate: (model getPosition - (1@1)) * (self class defaultSize + (5 @ 5)).
		self removeChildAt: 2.
		 ].