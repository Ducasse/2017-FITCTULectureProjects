initialization
initialize
	super initialize.
	self size: self size.
	oldRelativePosition := 1@1. "just for initialization, doesn't have to be same as start position - don't use constant"
	translationAnimation := BlNumberTransition new.
	lock := false.