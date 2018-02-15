instance creation
new: model
	| window |
	window := self basicNew.
	window
		fillWith: model;
		initialize.
	^ window