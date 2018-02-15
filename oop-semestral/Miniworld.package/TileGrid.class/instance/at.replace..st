accessing
at: position replace: aTile
	| index |
	index := position x + (position y * columns).
	aTile xy: position.
	self removeChildAt: index + 1.
	self addChild: aTile at: index + 1.