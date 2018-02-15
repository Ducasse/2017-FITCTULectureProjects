tests
testRoll
	|db|
	db := DiceBag new.
	db addDie: (Die new: 3);
		addDie: (Die new: 4);
		addDie: (Die new: 3).
	
	1 to: 10 do: [ 
							:i |
							|n|
							n := db roll.
							self assert: (n >= 3).
							self assert: (n <= 10).
					 ].