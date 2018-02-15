accessing
parseObjectFrom: path convertToType: type

| string file result |
file := FileStream fileNamed: path.

string := file contentsOfEntireFile.
		
result := (NeoJSONReader on: string readStream)
	mapAllInstVarsFor: type;
	nextAs: type.
	^result