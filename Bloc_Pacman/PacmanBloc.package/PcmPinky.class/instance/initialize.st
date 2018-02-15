accessing
initialize
	super initialize.
	stdVelocity := 0.8.
	velocity := stdVelocity.
	finder := PcmBasicRouteFinder new.
	isBeingHunting := false.
	intelligence := 4