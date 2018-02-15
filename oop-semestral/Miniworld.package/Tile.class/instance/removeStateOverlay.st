state update
removeStateOverlay
	self childrenCount = 1
		ifTrue: [ self removeChildAt: 1 ]