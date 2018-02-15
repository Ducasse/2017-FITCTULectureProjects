canvas methods
updateRaws
	space root removeChildren.
	rawField = nil
		ifFalse: [ rawField removeEventHandler: keyController ].
	self calculateRawPresentation.
	rawField addEventHandler: keyController.
	rawField
		requestFocus;
		yourself.
	space root addChild: rawField