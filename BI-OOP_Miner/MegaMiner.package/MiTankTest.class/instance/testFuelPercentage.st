tests-accessing
testFuelPercentage
	| tank |
	tank := MiTank new.
	
	self assert: (tank fuelPercentage = '100%' ).
	
	tank fuelAmount: tank capacity / 2.
	self assert: (tank fuelPercentage = '50%').
	
	tank fuelAmount: 0.
	self assert: (tank fuelPercentage = '0%').
	
	
	"tank fuelAmount: -10.
	self assert: (tank fuelPercentage = '0%')."

	tank fuelAmount: tank capacity * 2.
	self assert: (tank fuelPercentage = '200%').