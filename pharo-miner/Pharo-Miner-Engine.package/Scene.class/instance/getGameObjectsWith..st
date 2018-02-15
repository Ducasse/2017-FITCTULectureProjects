accessing
getGameObjectsWith: aBehaviourClass
	^ self gameObjects select: [ :go | (go getBehaviour: aBehaviourClass) isNotNil ]