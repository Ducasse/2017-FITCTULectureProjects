colliding
getGameObjectsCloserThan: aDistance to: aPoint
	^ (self gameObject scene getGameObjectsCloserThan: aDistance to: aPoint)
		reject: [ :go | go = self gameObject ]