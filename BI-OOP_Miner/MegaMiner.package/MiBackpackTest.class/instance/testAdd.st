tests-actions
testAdd
	| bag tmp |
	bag := MiBackpack new.
	
	tmp := bag size.
	bag add: MiBitcoinBlock new.
	self assert: (bag size > tmp) .
	
	bag capacity timesRepeat: [ bag add: MiGoldBlock new. ].
	tmp := bag size.
	bag add: MiBitcoinBlock new.
	self assert: (bag size > tmp) not .