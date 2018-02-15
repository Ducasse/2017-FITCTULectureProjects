saving
saveState: aGame to: aFilePath
	stream := (FileLocator workingDirectory / aFilePath) writeStream.
	self saveScene: aGame currentScene.
	stream close.