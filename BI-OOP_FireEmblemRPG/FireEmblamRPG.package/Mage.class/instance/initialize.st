initialization
initialize
	super initialize.
	self level: (Level withClass: 'Mage' ).		
	self class: 'Mage'.
	self actualHP: (self level abilities health).