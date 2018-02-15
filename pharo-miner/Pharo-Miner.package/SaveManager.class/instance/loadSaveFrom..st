loading
loadSaveFrom: aFilePath
	| res |
	stream := (FileLocator workingDirectory / aFilePath) readStream.
	res := OrderedCollection new.
	[ stream atEnd ] whileFalse: [ res add: self loadNextMinerObject ].
	^ res
	