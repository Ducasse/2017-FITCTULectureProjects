instance creation
materialSelectableWithText: aText
	^ self new
		button: (BlSelectableButton withText: aText);
		addRipple;
		addShadow;
		build