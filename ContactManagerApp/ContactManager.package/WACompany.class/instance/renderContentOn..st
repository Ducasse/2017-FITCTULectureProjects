rendering
renderContentOn: html
	| headerText |
	headerText := self isNew
		ifTrue: [ 'New Company' ]
		ifFalse: [ 'Edit Company' ].
	html heading with: headerText.
	html tbsForm
		with: [ self renderValidationMessagesOn: html.
			self renderFieldsOn: html.
			self
				renderButtonsOn: html
				withSubmitCallback: [ :tmp | 
					self company copyFrom: tmp.
					self saveCompany.
					self answer: company ].
			html break ].
	self isNew
		ifTrue: [ ^ self ].
	html render: self personList.
	html render: self prospectList