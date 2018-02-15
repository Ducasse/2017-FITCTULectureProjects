instance creation
newWithPlayerAt: lPos
	^ self basicNew initAt: lPos with: (Player newAt: lPos)