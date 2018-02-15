tests
testAddition
	|db1 db2|
	db1 := DiceBag new.
	db2 := DiceBag new.
	
	db1 addDie: (Die new: 1);
		 addDie: (Die new: 2).
	db2 addDie: (Die new: 3).
	
	self assert: ((db1 + db2) diceCount) equals: 3.
	self assert: ((db1 + db2) printString) equals: '1D1 + 1D2 + 1D3'.