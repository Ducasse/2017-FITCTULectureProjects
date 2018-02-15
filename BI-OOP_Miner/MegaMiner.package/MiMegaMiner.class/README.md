I contain whole game , used to start it and restart.

* DEBUGGING
	To debug game use:
		game := MiGame new.
		gameElement := MiGameElement createView: game.
		gameElement.
	After that you can interact with miner directly with keys or with gtInspector.
		
	Warning: do not use to interact with miner code like "game miner position: 3@3"! (the block won't be mined out and collected)
	
	To debug menu inspect:
		|menu|
		menu:=MiMegaMiner new menuElement.
		MiMegaMiner
			openInWindow: menu
			named: 'MENU'
			extent: 640@480.
		menu