initialization
initialize
	super initialize.
	self
		layout: BlBasicLayout new;
		size: self camera gameObject scene size.
	self subscribe