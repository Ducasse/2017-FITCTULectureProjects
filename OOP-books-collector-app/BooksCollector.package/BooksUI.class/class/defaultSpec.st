specs
defaultSpec
	^ SpecColumnLayout  composed
		newRow: [ :row | row add: #booksList ];
		newRow: [ :row | row
			newColumn: [ :col | col add: #refreshButton ];
			newColumn: [ :col | col add: #deleteButton ];
			newColumn: [ :col | col add: #incrButton ];
			newColumn: [ :col | col add: #decrButton ]
		] height: 30;
	yourself.