initialization
initialize

	super initialize.
	traits add: DefenderStep;
	add: SelfDefenderStep;
	add: BroDefenderStep;
	add: TeammateDefenderStep;
	add: LowestHpDefenderStep;
	add: HighestMpwrDefenderStep;
	add: HalfDefenderStep.