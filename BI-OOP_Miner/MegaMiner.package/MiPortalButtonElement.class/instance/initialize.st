initialization
initialize
	super initialize.
	self size: self size.
	self margin: (BlInsets top: 10).
	self relocate: (MiGameSize x - self size x)@(MiGameSize y - self size y).
	self addEventHandlerOn: BlClickEvent do: [ self model createPortal. self parent redraw]