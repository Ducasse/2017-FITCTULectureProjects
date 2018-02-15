instance creation
withImage: anImage
	^ (self withBackground: anImage)
		size: anImage image width @ anImage image height