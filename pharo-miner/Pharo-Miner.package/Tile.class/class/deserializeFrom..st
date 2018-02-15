serialization
deserializeFrom: aStream
	| sr obj |
	sr := STONReader on: aStream.
	obj := self new.
	obj transform position: sr parseObject.
	^ obj
	
	