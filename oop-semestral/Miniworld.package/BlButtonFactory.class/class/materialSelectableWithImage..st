instance creation
materialSelectableWithImage: anImage
	^ self new
		button: (BlSelectableButton withImage: anImage);
		addRipple;
		addShadow;
		build