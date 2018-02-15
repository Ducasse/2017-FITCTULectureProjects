printing
printEvent
	| stream |
	stream := String new writeStream.
	self printOn: stream.
	^ stream contents 