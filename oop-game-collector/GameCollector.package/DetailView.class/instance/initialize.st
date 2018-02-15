initialization
initialize
	game := NewValueHolder value: Game new.
	announcer := Announcer new.
	detailChangedBlock := [  ].
	super initialize