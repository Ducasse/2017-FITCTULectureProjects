initialization
loadLevel: aPath size: aPoint
	"Loads level and calls resize to create new LevelSpace for this level to be used for it's drawing"

	currentLevelPath := aPath.
	level := Level loadXsbFromFile: aPath.
	level announcer
		when: PlayerMovedAnnouncement send: #onPlayerMove to: self;
		when: VictoryAnnouncement send: #onVictory to: self.
	undoButton
		action: [ level undoMove.
			self playGrid takeKeyboardFocus ].
	redoButton
		action: [ level redoMove.
			self playGrid takeKeyboardFocus ].
	self updateLabels.
	self resize: aPoint