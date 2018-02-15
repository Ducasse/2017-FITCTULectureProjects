initialization
initializeGenerationButtonAndWindow
	| button |
	button := BlButtonFactory materialWithText: 'random map'.
	self space root addChild: button.
	self space
		addEventHandlerOn: BlSpaceResizeEvent
		do: [ :e | button relocate: (self space width / 2 - 60) @ 10 ].

	button addOnClick: [ :e | (SizeWindow withMiniworld: self) show ]