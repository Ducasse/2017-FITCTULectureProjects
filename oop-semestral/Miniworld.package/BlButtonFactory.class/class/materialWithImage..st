instance creation
materialWithImage: anImage
	^ self new
		button: (BlButton withImage: anImage);
		addRipple;
		addShadow;
		build