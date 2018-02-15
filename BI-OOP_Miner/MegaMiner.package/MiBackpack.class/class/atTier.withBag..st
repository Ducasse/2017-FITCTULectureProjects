instance creation
atTier: aTier withBag: aBag
	| instance |
	instance := self atTier: aTier.
	aBag do: [ :item | instance add: item ].
	^ instance