accessing-system
imageName
	^ String
		streamContents: [ :stream | stream << self imageDirectoryName << $/ << model getTerrain name << '.png' ]