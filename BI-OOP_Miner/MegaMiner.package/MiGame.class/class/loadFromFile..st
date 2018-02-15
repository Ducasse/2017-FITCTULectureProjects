instance creation
loadFromFile: aFile
	| stream game |
	[ stream := (FileStream oldFileNamed: MiSaveFileReference) readOnly.
	game := [ (NeoJSONReader on: stream) nextAs: self ]
		ensure: [ stream close ] ]
		on: Error
		do: [ :error | 
			Transcript
				show: 'Loading failed.';
				cr.
			game := self new ].
	^ game