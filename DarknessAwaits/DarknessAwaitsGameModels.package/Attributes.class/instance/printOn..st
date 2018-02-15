initialization
printOn: stream
	|string|
	string := 'Attributes:'.
	attributes keysAndValuesDo: [ :key :value |
		string := string, String cr, String tab, key, ': ', value asString 
		 ].
	stream nextPutAll: string