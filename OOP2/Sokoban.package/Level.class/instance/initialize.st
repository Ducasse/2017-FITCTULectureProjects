initalize
initialize
	super initialize.
	boxes := Bag new.
	currentScore := Score new.
	moveCount := 0.
	player := Player new