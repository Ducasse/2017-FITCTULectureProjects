specs
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :row | 
			row
				add: #profile ] 
				height: 70;
		newRow: [ :row | row add: #contactList ];
		yourself