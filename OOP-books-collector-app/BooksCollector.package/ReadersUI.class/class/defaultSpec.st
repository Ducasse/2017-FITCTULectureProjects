specs
defaultSpec
	^ SpecColumnLayout  composed
		newRow: [ :row | row add: #readersList ];
		newRow: [ :row | row
			newColumn: [ :col | col add: #refreshButton ];
			newColumn: [ :col | col add: #deleteButton ]
		] height: 30;
	yourself.