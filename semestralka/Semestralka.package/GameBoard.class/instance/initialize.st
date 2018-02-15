initialization
initialize
	super initialize.
	width := 0.
	height := 0.
	board := nil.
	unitList := LinkedList new.
	announcer := Announcer new.
	numberHumans := 0.
	numberOrcs := 0.