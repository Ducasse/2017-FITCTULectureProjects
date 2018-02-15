physics
calculateDrag: aTime
	self speed: self speed * ( 1 - (self drag * aTime))