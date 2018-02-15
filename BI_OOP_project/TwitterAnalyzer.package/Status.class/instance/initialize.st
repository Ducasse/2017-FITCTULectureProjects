initialization
initialize
	super initialize.
	tweet := Dictionary new.
	self setDate.
	self setLinks.
	self setStatus.
	self setTags.
	^ self.