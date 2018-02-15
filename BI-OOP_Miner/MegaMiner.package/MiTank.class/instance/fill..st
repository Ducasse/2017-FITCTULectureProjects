actions
fill: anAmouth
	fuelAmount  := fuelAmount + anAmouth.
	fuelAmount > capacity
		ifTrue: [ fuelAmount  := capacity ]