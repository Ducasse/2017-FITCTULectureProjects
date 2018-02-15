adding
+ aDiceBag
	|db|
	db := DiceBag new.
	diceBag do: [ :each | db addDie: each ].
	aDiceBag do: [ :each | db addDie: each ].
	
	^ db.