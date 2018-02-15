rendering
renderContentOn: html
	| headerText |
	headerText := self isNew
		ifTrue: [ 'New Person' ]
		ifFalse: [ 'Edit Person' ].
	html heading with: headerText.
	html tbsForm
		with: [ self renderValidationMessagesOn: html.
			self renderFieldsOn: html.
			self
				renderButtonsOn: html
				withSubmitCallback: [ :tmp | 
					self person copyFrom: tmp.
					self savePerson.
					self answer: person ].
			html break ]