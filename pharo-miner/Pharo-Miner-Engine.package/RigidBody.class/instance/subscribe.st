subscription
subscribe
	super subscribe.
	self gameObject announcer when: CollisionEvent do: [ :event | self reactToCollision: event ]