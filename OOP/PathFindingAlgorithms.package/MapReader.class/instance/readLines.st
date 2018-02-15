input/output
readLines
	^filePath asFileReference contents lines asOrderedCollection map: [ :line | line asArray asOrderedCollection map: [ :char | char asTile ] ]