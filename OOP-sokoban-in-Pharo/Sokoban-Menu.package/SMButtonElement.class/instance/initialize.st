initialization
initialize
	super initialize.
	self size: 100@350. "default size before it will be redraw"
	self button: (SMButtonModel new text: $a)