mining
miningCoroutine
	^ [ :g | 
	g yield: self.
	[ self gameObject position closeTo: target position ]
		whileFalse: [ self gameObject transform position: self gameObject transform position + self step.
			g yield: self ].
	self finishMining ]