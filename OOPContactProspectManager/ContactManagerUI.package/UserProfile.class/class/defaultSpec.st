specs
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :row | row
				newColumn: [ :col | col add: #photo ] width: 30;
				newColumn: [ :col | col add: #userNameLabel ]; 
				newColumn: [ :col | col add: #homeButton ] width:40
				];
		newRow: [ :row | row
				add: #logOutButton.
				] height: 30;
	yourself