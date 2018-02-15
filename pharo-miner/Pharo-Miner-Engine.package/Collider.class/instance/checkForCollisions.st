colliding
checkForCollisions
	self getCollisionEvents do: [ :each | self gameObject announcer announce: each ]