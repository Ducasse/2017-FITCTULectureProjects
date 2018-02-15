rendering
renderContentOn: html
	self isInner
		ifFalse: [ html heading
				level: 1;
				with: 'Prospect list' ]
		ifTrue: [ html heading
				level: 2;
				with: 'Company prospect list' ].
	html
		tbsForm: [ self renderValidationMessagesOn: html.
			self renderProspectsOn: html.
			self renderNewButtonsOn: html with: WAProspect newProspect ]