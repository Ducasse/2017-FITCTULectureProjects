manage move
tryMove: aMiner
	aMiner components drill miningPower >= self durability
		ifTrue:
		[
			aMiner
				consumeFuel: self fuelConsumption;
				causeHeatDamage;
				causeMechanicalDamage: self mechanicalDamage.
			^ aMiner checkIntegrity
		].
	^ false