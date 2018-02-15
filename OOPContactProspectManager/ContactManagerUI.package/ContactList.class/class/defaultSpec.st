specs
defaultSpec
	^ SpecColumnLayout composed
			newRow: [ :row | row add: #listTools ] height: 60;
			newRow: [ :row | row add: #listLabel ] height: 30;
			newRow: [ :row | row add: #listView ];
			newRow: [ :row | row add: #addButton; add: #deleteButton ] height: 30;
	yourself
		
	