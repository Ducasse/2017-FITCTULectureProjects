accessing
isPosition: position in: distance to: targetPos
	^ (
			(position posX - targetPos posX) abs <= distance 
			and: 
			(position posY - targetPos posY) abs <= distance 
		).