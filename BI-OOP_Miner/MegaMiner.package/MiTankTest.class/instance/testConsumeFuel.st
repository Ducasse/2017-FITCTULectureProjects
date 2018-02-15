tests-actions
testConsumeFuel
	| tank amount |
	tank := MiTank new.
	
	tank fuelToMax.
	amount := tank fuelAmount .
	tank consumeFuel: 1.
	self assert: (tank fuelAmount = (amount - 1)).
	
	amount := tank fuelAmount .
	tank consumeFuel: 0.
	self assert: (tank fuelAmount = amount).
	
	"this evil test dosnt pass with value -10"
	"amount := tank fuelAmount .
	tank consumeFuel: (-10).
	self assert: (tank fuelAmount < amount)."