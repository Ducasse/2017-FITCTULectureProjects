initialization
initialize
	super initialize.
	self size: self size.
	self margin: (BlInsets top: 10).
	self addEventHandlerOn: BlClickEvent do: [ self model upgrade: miner ]