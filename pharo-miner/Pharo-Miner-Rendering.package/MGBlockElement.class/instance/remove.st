accessing
remove
	self parent removeChild: self;
	invalidate.
	renderer := nil