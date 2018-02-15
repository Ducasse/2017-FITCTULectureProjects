initialization
loadTexture: aFile
	"load specific img file from cloned repo
	OLD CODE with url downloading:
		fromBinaryStream: ((self texturePath),(self textureName)) asUrl retrieveContents readStream."
	|idd repos|
	repos := IceRepository registry.
	repos	doWithIndex:
		[ :each :i | 
			(each name = self repositoryName)
				ifTrue: [ idd := i ]
		].
	^ Form fromFileNamed: ((repos at: idd) location fullName, (self texturePath), aFile)