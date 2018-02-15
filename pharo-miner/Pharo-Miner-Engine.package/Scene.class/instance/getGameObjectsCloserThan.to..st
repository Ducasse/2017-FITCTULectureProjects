accessing
getGameObjectsCloserThan: aDistance to: aPoint
	^ self gameObjects
		select: [ :go | go transform ifNil: [ false ] ifNotNil: [ :tr | (tr position distanceTo: aPoint) < aDistance ] ]