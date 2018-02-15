initialization
initialize
	super initialize.
	self addEventHandlerOn: BlClickEvent do: [ self model clicked ]