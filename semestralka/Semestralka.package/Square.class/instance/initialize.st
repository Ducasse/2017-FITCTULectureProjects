initialization
initialize
	super initialize.
	highlightAnnouncer := Announcer new.
	self setTerrain: Grass new. 
	object := NotAUnit new.