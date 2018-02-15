updating
changeImageTo: aNewImage
	self image = aNewImage
		ifTrue: [ ^ self ].
	
	self image: aNewImage