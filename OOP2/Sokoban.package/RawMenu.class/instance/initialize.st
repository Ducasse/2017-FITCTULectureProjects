initialization
initialize
	|levelButton eventListener|
	super initialize.
	self size: 500@500.
	eventListener := MenuButtonEventListener new.
	1 to: 5 do: [ :h |
		1 to: 5 do: [ :w |
			levelButton := RawMenuButton new initialize: ((h-1)*5+w).
			levelButton relocate: (65+(80*(w-1)))@(100+(80*(h-1))).
			levelButton addEventHandler: eventListener.
			self attachChild: levelButton.
			 ]  ].