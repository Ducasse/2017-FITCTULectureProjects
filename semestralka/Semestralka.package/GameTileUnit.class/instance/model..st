accessing
model: aModel
	super model: aModel.
	self relocate: (model square getPosition - (1@1)) * (self class defaultSize + (5 @ 5)).
	self addChild: self newImageElement.
	
	"we detect that our Unit model moved on GameBoard, so redraw/make animation
	--------------------------------------------------------------"
	model moveAnnouncer when: UnitMoveAnnouncement do: [ :announcement |
		| aPointFrom aPointTo |
		aPointFrom := announcement from.
		aPointTo := announcement to.
		"change icon"
		phase:= 'walkingRight'.
		announcement to x - announcement from x < 0 ifTrue: [ phase:= 'walkingLeft'. ].
		self removeChildAt: 1.
		self addChild: self newImageElement.
		"do animation"
		self modelMovedBy: (announcement to - announcement from).
		"do something else"
		phase:= 'standing'.
		].
	
	"nelze pouzit square z modelu... square je tam uz davno vymazany protoze jednotka umrela a v GameBoardu jsme ji odebrali"	
	model moveAnnouncer when: UnitDiedAnnouncement  do: [ :announcement | 
		announcement squareWhereDied.
		self removeChildAt: 1.
		self removeFromParent].
	