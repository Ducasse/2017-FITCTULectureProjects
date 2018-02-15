colliding
createCollisionEvent: aCollider
	^ CollisionEvent new
		collider: aCollider;
		collisionVector: (self collisionArea intersectionDepth: aCollider collisionArea);
		yourself