instance creation
index: anIndex
	^ self basicNew
		initialize;
		geometry: BlRectangle new;
		image: (self tileImage: anIndex);
		size: 48 @ 48;
		yourself