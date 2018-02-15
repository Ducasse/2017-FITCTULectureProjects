physics
calculateGravity: aTime
	self speed: self speed + (Vector2D down * self gravity * aTime)