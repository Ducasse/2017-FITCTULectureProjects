initialization
initialize

	super initialize.
	
	nickname:= 'defaultUnitName'.
	ap := 1.
	atk := 10.
	def := 5.
	stepDeleg := nil.
	hp := 5.
	mp := 10.
	mpwr := 3.
	spd := 3.
	takeDamageDeleg  := TakeDamage withOwner: self.
	effects := Bag new.
	team :=1.
	humanPlayer := false.
	diedAlready := false.