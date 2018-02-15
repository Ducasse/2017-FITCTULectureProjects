specs
defaultSpec
	^ SpecColumnLayout  composed
		newRow: [ :row | row
			newColumn: [ :col | col add: #readersList ];
			newColumn: [ :col | col add: #borrowingsList ]
			];
		newRow: [ :row | row
			newColumn: [ :col | col add: #refreshReadersButton ];
			newColumn: [ :col | col add: #returnBookButton ]
			] height: 30;
	yourself.