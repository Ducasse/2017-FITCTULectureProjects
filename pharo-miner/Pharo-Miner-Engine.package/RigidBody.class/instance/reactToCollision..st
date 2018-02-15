physics
reactToCollision: aCollisionEvent
	| myspeed itsspeed |
	myspeed := (self speed magnitudeInDirection: aCollisionEvent normal negated) abs.
	itsspeed := ((aCollisionEvent collider gameObject getBehaviour: RigidBody)
				ifNotNil: [ :rb | rb speed magnitudeInDirection: aCollisionEvent normal negated ]
				ifNil: [ Vector2D zero ]).
	self applyForce: aCollisionEvent normal * (myspeed - itsspeed) * self mass * (1 + self bounce).
	self gameObject transform position: self gameObject transform position 
												+ (aCollisionEvent normal * aCollisionEvent depth * (self bounce + 4 / 5))