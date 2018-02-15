initialization
initialize
	super initialize.
	self level: (Level withClass: 'Hunter' ).		
	self class: 'Hunter'.
	self actualHP: (self level abilities health).