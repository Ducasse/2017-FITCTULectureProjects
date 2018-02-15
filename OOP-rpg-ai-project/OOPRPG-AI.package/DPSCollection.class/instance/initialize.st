initialization
initialize

	super initialize.
	traits 
		add: RandomAttackStep;
		add: UnfocusedAttackStep;
		add: FocusedAttackStep;
		add: MagicHaterStep;
		add: TryhardStep;
		add: LowestHpAttackStep;
		add: ClumsyAttackStep.