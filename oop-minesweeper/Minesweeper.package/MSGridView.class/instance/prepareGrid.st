actions
prepareGrid
	| n field fieldView |
	eventListener := MSFieldEventListener new grid: grid.
	
	eventListener announcer
		when: MSGameStartAnnoucement
		send: #regenerateGrid
		to: self.
	
	n := grid gameProperties size.
	self layout columnCount: n y.
	fieldMatrix := Matrix rows: n x columns: n y.
	gridSize := n * (MSFieldView new fieldSize + spacing) + spacing.
	self size: gridSize transposed.
	1 to: n x do: [ :i | 
		1 to: n y do: [ :j | 
			field := grid grid at: i at: j.
			fieldView := (field isMine)
				ifTrue: [ MSMineFieldView new ]
				ifFalse: [ MSNumberFieldView new ].
			
			fieldView field: field.
			fieldView addEventHandler: eventListener.
			fieldMatrix at: i at: j put: fieldView.
			self addChild: fieldView.
		]
	]