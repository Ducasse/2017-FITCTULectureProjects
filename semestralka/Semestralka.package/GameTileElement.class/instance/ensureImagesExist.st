graphic file handeling
ensureImagesExist
	self imageName asFileReference exists
		ifFalse: [ self error: 'graphic content missing' ].
	self imageName asFileReference isReadable
		ifFalse: [ self error: 'graphics image file is not readable' ]