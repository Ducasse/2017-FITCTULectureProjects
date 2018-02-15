event dispatching
selectButton
	selected := true.
	selectObject := BlElement new
		geometry: BlRectangle new;
		size: self extent;
		background: self rippleColor.
	self addChildFirst: selectObject.
	self onSelectFire: true