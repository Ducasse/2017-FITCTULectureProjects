instance creation
selectableRippleWithText: aText
	^ self new
		button: (BlSelectableButton withText: aText);
		addRipple;
		build