initialization
initialize
	super initialize.
	self level: (Level withClass: 'Swordman' ).		
	self class: 'Swordman'.
	self actualHP: (self level abilities health).