rendering
renderContentOn: html
	self isInner
		ifFalse: [ html heading
				level: 1;
				with: 'Person list' ]
		ifTrue: [ html heading
				level: 2;
				with: 'Company person list' ].
	html
		tbsForm: [ self renderValidationMessagesOn: html.
			self renderPersonsOn: html.
			self renderNewButtonsOn: html with: WAPerson newPerson ]