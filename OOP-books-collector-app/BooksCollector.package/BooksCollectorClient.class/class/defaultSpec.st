specs
defaultSpec
	^ SpecColumnLayout  composed
		newRow: [ :row | row
			newColumn: [ :col | col add: #booksButton ];
			newColumn: [ :col | col add: #addBookButton ]
		] height:40;
	
		newRow: [ :row | row
			newColumn: [ :col | col add: #readersButton ];
			newColumn: [ :col | col add: #addReaderButton ]
		] height:40;
	
		newRow: [ :row | row
			newColumn: [ :col | col add: #borrowingsButton ];
			newColumn: [ :col | col add: #addBorrowingButton ]
		] height:40;

		newRow: [ :row | row
			newColumn: [ :col | col add: #urlTextField ];
			newColumn: [ :col | col add: #urlButton ] width: 80
		] height: 25;
	
	yourself.
