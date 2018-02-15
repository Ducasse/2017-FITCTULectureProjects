tests
testAddDie
	|d|
	d := DiceBag new.
	
	d addDie: (Die new: (3)).
	d addDie: (Die new: (3)).
	d addDie: (Die new: (3)).
	d addDie: (Die new: (2)).
	
	self assert: (d diceCount) equals: 4.