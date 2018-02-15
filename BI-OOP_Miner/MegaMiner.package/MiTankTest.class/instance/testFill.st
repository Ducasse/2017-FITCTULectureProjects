tests-actions
testFill
	| tank amount max |
	tank := MiTank new.
	
	max := tank capacity .
	tank fill: (tank capacity * 2).
	self assert: (tank fuelAmount = max).
	
	tank consumeFuel: 1.
	amount := tank fuelAmount.
	tank fill: 0.
	self assert: (tank fuelAmount = amount ).
	amount := tank fuelAmount.
	tank fill: 1.
	self assert: (tank fuelAmount = (amount + 1) ).