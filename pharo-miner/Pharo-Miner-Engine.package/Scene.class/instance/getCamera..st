accessing
getCamera: aNumber
	^ ((self getGameObjectsWith: Camera) at: aNumber) getBehaviour: Camera