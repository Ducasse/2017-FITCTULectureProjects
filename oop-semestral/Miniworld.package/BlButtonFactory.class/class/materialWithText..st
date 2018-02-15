instance creation
materialWithText: aText
	^ self new
		button: (BlButton withText: aText);
		addRipple;
		addShadow;
		build