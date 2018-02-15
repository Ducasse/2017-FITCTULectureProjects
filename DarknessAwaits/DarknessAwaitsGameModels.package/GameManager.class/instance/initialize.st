initialization
initialize
	super initialize.
	
	gameStateManager := GameStateManager new. gameStateManager gameManager: self.
	tileCharInfo := TileCharInfo new.
	Transcript open; clear.
	
	globalSettings := GlobalSettings new.
	globalSettingsPath := 'pharo-local/iceberg/rathojak/DarknessAwaits/json/globalSettings.json'.
	
	self loadGlobalSettings.
	self loadGameModelItems.
	
	player := Player new.
	self addDefaultEquipment.
	
	level := 1.
	
	fightOrderQueue := FightOrderQueue new.
	monsters := OrderedCollection new.