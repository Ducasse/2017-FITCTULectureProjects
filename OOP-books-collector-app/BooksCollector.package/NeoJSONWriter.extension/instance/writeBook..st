*BooksCollector
writeBook: aBook
	self writeString: 'id'; encodeChar: $:.
	aBook id printOn: writeStream .
	self encodeChar: $,.
	
	self writeString: 'title'; encodeChar: $:.
	aBook title printOn: writeStream. 
	self encodeChar: $,.
	
	self writeString: 'genre'; encodeChar: $:.
	aBook genre printOn: writeStream. 
	self encodeChar: $,.
	
	self writeString: 'year'; encodeChar: $:.
	aBook year printOn: writeStream. 
	self encodeChar: $,.
	
	self writeString: 'writer'; encodeChar: $:.
	aBook writer printOn: writeStream. 
	self encodeChar: $,.
	
	self writeString: 'publisher'; encodeChar: $:.
	aBook publisher printOn: writeStream. 
	