tests-actions
testSellCargo
	| bag |
	bag := MiBackpack new.
	
	self assert: (bag sellCargo ) = 0.
	
	bag capacity timesRepeat: [ bag add: MiBitcoinBlock new. ].
	self assert: (bag sellCargo ) = (bag capacity * MiBitcoinBlock new price ).
	
	self assert: (bag sellCargo ) = 0.