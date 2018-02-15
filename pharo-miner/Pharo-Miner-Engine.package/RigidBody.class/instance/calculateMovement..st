physics
calculateMovement: aTime
	self gameObject transform
		position: (self gameObject transform position translateBy: self speed * aTime)