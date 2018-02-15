initialization
initializeBottomBar
	bottomBar := BlBottomBar on: self space.
	bottomBar
		addChild:
			((BlButtonFactory selectableRippleWithText: 'start')
				backgroundColor: Color green;
				addEventHandlerOn: BlClickEvent do: [ self stateHolder: (StateHolder new: TileState start) ]);
		addChild:
			((BlButtonFactory selectableRippleWithText: 'end')
				backgroundColor: Color red;
				addEventHandlerOn: BlClickEvent do: [
					self stateHolder: (StateHolder new: TileState end).
					endTile ifNotNil: [ endTile state: TileState undiscovered ].
					algorithm isSetEnd: false.
				]).
	(Tile allSubclasses select: [ :sub | sub subclasses isEmpty ])
		do: [ :subclass | bottomBar addChild: (self rippleImageButtonWithClass: subclass) ]