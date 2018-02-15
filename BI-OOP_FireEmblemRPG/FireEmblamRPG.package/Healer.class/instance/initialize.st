initialization
initialize
	super initialize.
	self level: (Level withClass: 'Healer' ).		
	self class: 'Healer'.
	self actualHP: (self level abilities health).