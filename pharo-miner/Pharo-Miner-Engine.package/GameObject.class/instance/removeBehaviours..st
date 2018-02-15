adding/removing
removeBehaviours: aBehaviourClass
	(self getBehaviours: aBehaviourClass) do: [ :each | each gameObject: nil].
	self cleanBehaviours