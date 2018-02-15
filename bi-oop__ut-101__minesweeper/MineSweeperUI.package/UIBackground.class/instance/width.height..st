accessing
width: aWidth height: aHeight
	ext := aWidth@aHeight.
	self size: (ext x + 20)@(ext y + 62).
	^ self.