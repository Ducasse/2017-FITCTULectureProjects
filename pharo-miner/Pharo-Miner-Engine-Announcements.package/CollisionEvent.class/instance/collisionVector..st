accessing
collisionVector: aVector
	self normal: aVector normalized.
	self depth: aVector magnitude.