accessing
level: aLevel
	| cellSize dim |
	level := aLevel.
	self layout columnCount: level width.
	"level elements should be displayed as squares so that images aspect ratio is preserved"
	dim := (self displaySize x / level width min: self displaySize y / level height) floor.
	cellSize := dim @ dim.
	self displaySize: (level width * dim) @ (level height * dim).
	0 to: level height - 1 do:
		[ :r | 0 to: level width - 1 do: [ :c | self addChild: (GameCellElement forCell: (level at: r @ c) withSize: cellSize) ] ].
	level announcer when: PlayerMovedAnnouncement send: #onPlayerMove to: self