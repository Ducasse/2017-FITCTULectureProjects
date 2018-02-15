initialization
initialize
	super initialize.

	self background:(
		BlBackground builder
			paint: Color blue;
			opacity: 1;
			build
	).
		
	self border: (BlBorder paint: Color black width: 1).
