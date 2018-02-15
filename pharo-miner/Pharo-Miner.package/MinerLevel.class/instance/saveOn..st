saving
saveOn: aStream
	self gameObjects do: [ :go | go serializeOn: aStream ]