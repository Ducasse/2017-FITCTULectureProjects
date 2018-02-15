specs
defaultSpec
	^ SpecColumnLayout  composed
		newRow: [ :row | row
			newColumn: [ :col | col add: #readersList ];
			newColumn: [ :col | col add: #booksList ]
			];
		newRow: [ :row | row
			newColumn: [ :col | col add: #refreshReadersButton ];
			newColumn: [ :col | col add: #refreshBooksButton ];
			newColumn: [ :col | col add: #addBorrowingButton ]
			] height: 30;
	yourself.