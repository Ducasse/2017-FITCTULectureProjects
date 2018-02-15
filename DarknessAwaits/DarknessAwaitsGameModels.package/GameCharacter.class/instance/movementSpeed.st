initialization
movementSpeed
	^ self baseMovementSpeed + ((attributes getAttributeOfType: AttributeTypeEnum agility) / 7) asInteger