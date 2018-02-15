printing
printOn: aStream 
	aStream 
		nextPutAll: 'Button'; 
		nextPut: Character space; 
		nextPut: $(; 
		nextPutAll: self text; 
		nextPut: $)
