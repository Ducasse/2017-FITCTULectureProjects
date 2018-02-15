accessing
model: aModel
	| aSquareEventListener anUnitEventListener |
	super model: aModel.
		
	aSquareEventListener := SquareEventClickListener new gameBoard: (model).
	anUnitEventListener := (UnitEventClickListener new gameBoard: model).
	"model inspect."
	model getBoard do: [ :each |
"		| aSquareEventListener anUnitEventListener |
		aSquareEventListener := SquareEventClickListener new gameBoard: (model).
		anUnitEventListener := (UnitEventClickListener new gameBoard: model)."
		self addChild: (GameTileElement model: each eventListener: aSquareEventListener) ].
		self addChildren:
			(model getUnitList getList collect: [:each| GameTileUnit model: each eventListener: anUnitEventListener]).
	
	model announcer
		when: UnitMoveAnnouncement
		do: [ :announcement |
			| pointFrom pointTo |
			pointFrom := announcement from.
			pointTo := announcement to. ].