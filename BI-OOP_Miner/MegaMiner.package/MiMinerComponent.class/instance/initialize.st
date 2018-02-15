initialization
initialize
	upgrades := self allTiers asOrderedCollection
		"dummy initialization, the price and effect is overwritten and initialized properly in the end"
		add: (MiComponentTier price: Float infinity effect: [  ]);
		yourself.
	(upgrades at: self tier) apply