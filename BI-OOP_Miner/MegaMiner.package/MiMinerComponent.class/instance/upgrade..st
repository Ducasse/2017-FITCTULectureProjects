upgrading
upgrade: aMiner
	self nextUpgrade price > aMiner money
		ifTrue: [ ^ self ].
	self nextUpgrade apply.
	aMiner pay: self nextUpgrade price.
	self tier: self nextTier