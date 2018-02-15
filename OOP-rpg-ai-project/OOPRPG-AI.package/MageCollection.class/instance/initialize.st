initialization
initialize

	super initialize.
	traits
		add: HealerStep;
		add: ApprenticeMageStep;
		add: BuffMageStep;
		add: CautiousMageStep;
		add: OffensiveMageStep;
		add: SupportMageStep;
		add: GolemMakerStep.