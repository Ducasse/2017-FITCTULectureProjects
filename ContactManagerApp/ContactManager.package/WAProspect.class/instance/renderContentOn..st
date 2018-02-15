rendering
renderContentOn: html
	| headerText |
	headerText := self isNew
		ifTrue: [ 'New Prospect' ]
		ifFalse: [ 'Edit Prospect' ].
	html heading with: headerText.
	html tbsForm
		with: [ self renderValidationMessagesOn: html.
			self renderFieldsOn: html.
			self
				renderButtonsOn: html
				withSubmitCallback: [ :tmp | 
					self prospect copyFrom: tmp.
					self saveProspect.
					self answer: prospect ].
			html break ]