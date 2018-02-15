accesing-system
imageName
	^ String
		streamContents: [ :stream | stream << self imageDirectoryName << $/ << 'selection.png' ]