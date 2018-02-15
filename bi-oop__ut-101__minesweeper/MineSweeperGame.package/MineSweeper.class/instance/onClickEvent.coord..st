accessing
onClickEvent: eventId coord: coordinate
	| x y |
	x := coordinate x.
	y := coordinate y.
	eventId = 1 & (board apiIsMarkedAtX: x Y: y) not
		& board apiIsFinished not
		ifTrue: [ (board apiOpenAtX: x Y: y)
				ifTrue: [ self refreshBoard.
					board apiIsWon
						ifTrue: [ MSTimer stop.
							self ui uiButton stateWin ] ]
				ifFalse: [ MSTimer stop.
					self showAllMinesX: x y: y.
					self ui uiButton stateFailed ] ].
	eventId = 3 & board apiIsFinished not
		ifFalse: [ ^ self ].
	board apiToggleMarkAtX: x Y: y.
	ui mines: board apiMinesCounter.
	self refreshBoard