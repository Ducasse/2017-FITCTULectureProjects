initialization
initialize
	super initialize.
	self level: (Level withClass: 'Tank' ).		
	self class: 'Tank'.
	self actualHP: (self level abilities health).