initialization
initialize

	super initialize.

	turn := 0.
	currentUnit := 1.
	units := SortedCollection sortBlock: [:u1 :u2 | u1 spd >= u2 spd].
	team1 := OrderedCollection new.
	team2 := OrderedCollection new.
	ui := GameUI create: self.