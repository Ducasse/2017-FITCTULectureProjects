physics
reactToCollision: aCollisionEvent
	touchingtiles
		at: aCollisionEvent normal negated
		ifPresent: [ :go | 
			touchingtiles
				at: aCollisionEvent normal negated
				put: (self selectTileFrom: go and: aCollisionEvent collider gameObject) ]
		ifAbsentPut: aCollisionEvent collider gameObject