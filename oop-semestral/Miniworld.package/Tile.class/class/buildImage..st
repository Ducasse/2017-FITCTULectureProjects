instance creation
buildImage: anImage
	^ BlBackground builder
		image: anImage;
		build