colliding
getCollidersToTest
	^ (self
		getGameObjectsCloserThan: self colliderShape diameter * 2 to: self position)
		collect: [ :go | go getBehaviour: Collider ]