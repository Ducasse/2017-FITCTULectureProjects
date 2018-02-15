instance creation
newWithBoxAt: lPos
	^ self basicNew initAt: lPos with: (Box newAt: lPos)