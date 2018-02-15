initialization
initialize
	super initialize.
	
	cards := OrderedCollection new.
	mapHeigth := 4.
	mapWidth := 4.
	selectedCard := nil.
	sideBar := SideBar new.
	eventLog := CombatLog new.