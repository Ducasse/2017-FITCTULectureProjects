specs
defaultSpec
	^ SpecRowLayout composed
		newColumn: [ :col | col newRow: [ :row | row add: #posterImage ] ] width: 200;
		addSplitter;
		newColumn:
			[ :col | 
			col
				add: #titleText height: 35;
				add: #yearText height: 25;
				add: #genreSelect height: 25;
				add: #descriptionText ] yourself