instance creation
selectableRippleWithImage: anImage
	^ self new
		button: (BlSelectableButton withImage: anImage);
		addRipple;
		build