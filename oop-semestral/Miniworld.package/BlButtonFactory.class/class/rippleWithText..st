instance creation
rippleWithText: aText
	^ self new
		button: (BlButton withText: aText);
		addRipple;
		build