initialization
model: aSource
	super model: aSource.
	self
		createText: ('  ', model asString)
		withBackground: self getBackground