initialization
initialize
	super initialize.
	
	inventory := Inventory new.
	heroes := OrderedCollection new.
	
	self createHeroes.