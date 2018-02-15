mining
startMining: aMineableTile
	target := aMineableTile.
	(self gameObject getBehaviour: Collider) deactivate.
	(self gameObject getBehaviour: RigidBody) deactivate.
	(self gameObject getBehaviour: Controller) deactivate.
	self startCoroutine: self miningCoroutine