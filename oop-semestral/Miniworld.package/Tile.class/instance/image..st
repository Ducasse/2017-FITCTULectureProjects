accessing
image: anImage
	image := anImage.
	self background: (self class buildImage: (anImage magnifyBy: 1.5))