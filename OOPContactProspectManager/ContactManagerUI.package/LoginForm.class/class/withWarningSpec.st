specs
withWarningSpec
	^ SpecColumnLayout composed
			newRow: [ :row | row add: #loginLabel ] height: 30;
			newRow: [ :row | row add: #loginInput ] height: 25;
			newRow: [ :row | row add: #passwordLabel ] height: 30;
			newRow: [ :row | row add: #passwordInput ] height: 25;
			newRow: [ :row | row 
				newColumn: [:col | col add: #warningIcon] width: 30;
				newColumn: [:col | col add: #warningText]
				] height: 30;
			newRow: [ :row | row add: #loginButton; add: #signUpButton ] height: 30;
			yourself