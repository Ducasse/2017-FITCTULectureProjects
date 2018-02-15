initialization
save
	| stream writer |
	
	stream := MiSaveFileReference writeStream.
	writer := NeoJSONWriter on: stream.
		writer prettyPrint: true;
		nextPut: self;
		writeObject: self.
	stream close