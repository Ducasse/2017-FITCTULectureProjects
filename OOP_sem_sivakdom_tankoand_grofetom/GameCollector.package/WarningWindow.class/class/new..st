instance creation
new: m
	| window |
	window := self basicNew.
	window
		message: m;
		initialize.
	^ window