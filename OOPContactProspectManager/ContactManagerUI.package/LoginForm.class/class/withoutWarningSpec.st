specs
withoutWarningSpec
<spec: #default>
	^ SpecColumnLayout composed
			newRow: [ :row | row add: #loginLabel ] height: 30;
			newRow: [ :row | row add: #loginInput ] height: 25;
			newRow: [ :row | row add: #passwordLabel ] height: 30;
			newRow: [ :row | row add: #passwordInput ] height: 25;
			newRow: [ :row | row ] height: 30;
			newRow: [ :row | row add: #loginButton; add: #signUpButton ] height: 30;
			yourself