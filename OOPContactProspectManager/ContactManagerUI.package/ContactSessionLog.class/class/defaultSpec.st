specs
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :row | row add: #listLabel] height: 30;
		newRow: [ :row | row add: #sessionList];
		newRow: [ :row | row 
			add: #dateLabel;
			add: #dateField;
			add: #addSessionButton;
			add: #deleteSessionButton] height: 30;
		yourself