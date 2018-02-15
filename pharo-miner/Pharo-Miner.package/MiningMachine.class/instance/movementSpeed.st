accessing
movementSpeed
	movementspeed ifNil: [ movementspeed := 1 ].
	^ movementspeed