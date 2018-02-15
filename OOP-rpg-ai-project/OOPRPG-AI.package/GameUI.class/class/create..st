instance creation
create: aBattle
	| ui |
	ui := self new.
	ui battle: aBattle.
	ui mainWindow: GameUIMainWindow new.
	ui mainWindow ui: ui.
	^ ui