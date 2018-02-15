mining
finishMining
	self gameObject addScore: target scoreValue.
	target destroySelf.
	target := nil.
	(self gameObject getBehaviour: Collider) activate.
	(self gameObject getBehaviour: RigidBody) activate.
	(self gameObject getBehaviour: Controller) activate