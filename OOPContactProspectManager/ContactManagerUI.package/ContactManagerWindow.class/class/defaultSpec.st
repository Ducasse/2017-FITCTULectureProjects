specs
defaultSpec
	^ SpecLayout composed
		newRow:
			[ :row | 
			row
				newColumn: [ :col | col add: #sidebar ] left: 0.0 right: 0.5;
				addSplitter;
				newColumn: [ :col | col add: #contactDetails ] left: 0.5 right: 0 ] yourself