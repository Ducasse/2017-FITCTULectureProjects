initialization
initialize
	super initialize.
	velocity := 0.75.
	finder := PcmBasicRouteFinder new.
	isBeingHunting := false