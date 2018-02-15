serialization
deserializeFrom: aStream
	| sr obj |
	sr := STONReader on: aStream.
	obj := self onKeybind: (sr parseObject collect: [ :k | Key value: k keyValue]).
	obj transform position: sr parseObject.
	^ obj
	
	