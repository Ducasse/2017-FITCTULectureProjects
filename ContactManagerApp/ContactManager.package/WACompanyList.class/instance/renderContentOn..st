rendering
renderContentOn: html
	html heading
		level: 1;
		with: 'Company list'.
	html
		tbsForm: [ self renderValidationMessagesOn: html.
			self renderCompaniesOn: html.
			self renderNewButtonsOn: html with: WACompany new ]