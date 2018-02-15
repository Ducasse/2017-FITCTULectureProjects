initialization
initializeSizeGroup
	^ BlButtonGroup new
		layout: BlLinearLayout horizontal;
		relocate: 50 @ 10;
		constraintsDo: [ :c | c horizontal fitContent ];
		addChild: (self makeSizeSettingButton: 5);
		addChild: (self makeSizeSettingButton: 10) selectButton;
		addChild: (self makeSizeSettingButton: 20)