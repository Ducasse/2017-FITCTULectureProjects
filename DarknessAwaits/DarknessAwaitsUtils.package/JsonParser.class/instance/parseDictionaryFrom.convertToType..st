accessing
parseDictionaryFrom: path convertToType: type

	| string file result |
	file := FileStream fileNamed: path.

	string := file contentsOfEntireFile.
		
	result := (NeoJSONReader on: string readStream)
				mapAllInstVarsFor: type;
  	 			for: #DicionaryOfObjects
   			   customDo: [ :mapping | mapping mapWithValueSchema: type ];
   				nextAs: #DicionaryOfObjects.

	^ result
