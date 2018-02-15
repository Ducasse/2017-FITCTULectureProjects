action
printOn: aStream

	aStream
			<< self sender; << separator; 
			<< self text; << String crlf
	
