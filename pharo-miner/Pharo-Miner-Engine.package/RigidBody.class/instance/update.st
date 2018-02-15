updating
update
	super update.
	self calculateGravity: self time deltaTime.
	self calculateMovement: self time deltaTime.
	self calculateDrag: self time deltaTime.