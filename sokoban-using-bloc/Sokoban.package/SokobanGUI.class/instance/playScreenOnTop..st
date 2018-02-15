actions
playScreenOnTop: aPath
"Shows level in GUI"
	playScreen loadLevel: aPath size: gui widget extent.
	self needRebuild: false.
	self
		buildWithSpecLayout:
			(SpecLayout composed
				newRow: [ :row | row add: #playScreen ] origin: 0 @ 0 corner: 1 @ 1;
				yourself)