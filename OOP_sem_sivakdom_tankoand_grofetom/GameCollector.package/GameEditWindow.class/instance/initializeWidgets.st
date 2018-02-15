initialization
initializeWidgets
	gameTypeLabel := self newLabel.
	gameTypeDropList := self newDropList.
	gameNameLabel := self newLabel.
	gameNameText := self newText.
	gameDescLabel := self newLabel.
	gameDescText := self newText.
	
	addGameButton := self newButton.
	
	gameTypeLabel label: 'Game Type:'.
	gameNameLabel label: 'Game Name:'.
	gameDescLabel label: 'Game Description:'.
	
	addGameButton label: 'Add Game'.
	
	gameTypeDropList items: { PCGame.PS3Game.PS4Game.WiiGame }.
