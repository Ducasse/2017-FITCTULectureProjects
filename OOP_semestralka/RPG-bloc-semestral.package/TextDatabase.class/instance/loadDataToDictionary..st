initialize
loadDataToDictionary: aFile

	|contentString A B tmp dict|
	contentString := aFile asFileReference contents.
	dict := Dictionary new.
	
	contentString linesDo: [ :aLine | 
		
		tmp := aLine splitOn: ';'.
		A := tmp first.
		B := tmp second.		
		dict at: A put: B ].
	
^dict