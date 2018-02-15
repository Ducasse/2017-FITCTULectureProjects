instance creation
newEmptyAt: lPos
	^ self basicNew initAt: lPos with: (Empty newAt: lPos)