instance creation
atTier: aTier withFuel: anAmount
	^ (self atTier: aTier) fuelAmount: anAmount.
	