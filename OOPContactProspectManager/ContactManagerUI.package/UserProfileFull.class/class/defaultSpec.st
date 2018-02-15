specs
defaultSpec
	^ SpecColumnLayout composed 
		newRow: [ :row2 | row2
			newColumn: [ :col | col 
				newRow: [ :row | row add: #usernameLabel] height:30;
				newRow: [ :row | row add: #firstNameLabel] height:30;
				newRow: [ :row | row add: #lastNameLabel] height:30;
				newRow: [ :row | row add: #passwordLabel] height:30;
				newRow: [ :row | row add: #emailLabel] height:30;
				newRow: [ :row | row add: #addressLabel] height:30;
				newRow: [ :row | row add: #phoneNumberLabel] height:30;
				newRow: [ :row | row add: #companyLabel] height:30;
				newRow: [ :row | row add: #roleLabel] height:30
				] width: 100;
			newColumn: [ :col | col 
				newRow: [ :row | row add: #usernameField] height:30;
				newRow: [ :row | row add: #firstNameField] height:30;
				newRow: [ :row | row add: #lastNameField] height:30;
				newRow: [ :row | row add: #passwordField] height:30;
				newRow: [ :row | row add: #emailField] height:30;
				newRow: [ :row | row add: #addressField] height:30;
				newRow: [ :row | row add: #phoneNumberField] height:30;
				newRow: [ :row | row add: #companyField] height:30;
				newRow: [ :row | row add: #roleField] height:30]
			];
		newRow: [ :row | row add: #submitButton; add: #discardButton] height: 30;
		yourself.