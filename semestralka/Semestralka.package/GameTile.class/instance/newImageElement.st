accesing
newImageElement
	^ BlElement new
		background: (BlImageBackground image: self newImageForm);
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ];
		yourself