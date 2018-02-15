factory
makeSizeSettingButton: aNumber
^ (BlButtonFactory materialSelectableWithText: aNumber asString)
		addOnClick: [ :e | dimensions := aNumber ]