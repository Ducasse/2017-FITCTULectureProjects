initialization
subscribe
	self announcer when: StartAnnouncement do: [ :col | self start ].
	self announcer when: CollisionEvent do: [ :col | self reactToCollision: col ]