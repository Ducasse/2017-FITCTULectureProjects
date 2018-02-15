initialization
initialize
	super initialize.
	self level: (Level withClass: 'Rogue' ).		
	self class: 'Rogue'.
	self actualHP: (self level abilities health).