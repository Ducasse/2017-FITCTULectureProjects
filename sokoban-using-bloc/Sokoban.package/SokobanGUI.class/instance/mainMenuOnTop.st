actions
mainMenuOnTop
"Shows main menu in GUI"
	self needRebuild: false.
	self
		buildWithSpecLayout:
			(SpecLayout composed
				newRow: [ :row | row add: #mainMenu ] origin: 0.25 @ 0.25 corner: 0.75 @ 0.75;
				yourself)