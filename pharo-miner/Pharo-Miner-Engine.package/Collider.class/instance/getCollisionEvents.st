colliding
getCollisionEvents
	^ (self getCollidersToTest
		select: [ :each | self collidesWith: each ])
		collect: [ :each | self createCollisionEvent: each ]