specs
defaultSpec
	^ SpecColumnLayout composed 
		newRow: [ :row | row add: #nameLabel ] height: 50;
		newRow: [ :row | row add: #phoneNumberLabel ] height: 30;
		newRow: [ :row | row add: #emailLabel ] height: 30;
		newRow: [ :row | row add: #companyLabel ] height: 30;
		newRow: [ :row | row add: #roleInCompanyLabel ] height: 30;
		newRow: [ :row | row add: #addReminderButton; 
			add: #reminderDateLabel; 
			add: #reminderDateField ] height: 30;
		yourself.