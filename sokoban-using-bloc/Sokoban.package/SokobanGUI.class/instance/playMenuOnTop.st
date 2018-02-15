actions
playMenuOnTop
	"Shows menu for choosing a level in GUI"

	self needRebuild: false.
	self
		buildWithSpecLayout:
			(SpecLayout composed
				newRow: [ :row | row add: #playMenu ] origin: 0 @ 0 corner: 1 @ 1;
				yourself).
	self playMenu loadHighscores