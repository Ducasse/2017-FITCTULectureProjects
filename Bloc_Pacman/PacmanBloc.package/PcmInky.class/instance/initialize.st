accessing
initialize
	super initialize.
	stdVelocity := 0.80.
	velocity := stdVelocity.
	finder := PcmBasicRouteFinder new.
	isBeingHunting := false.
	intelligence := 3