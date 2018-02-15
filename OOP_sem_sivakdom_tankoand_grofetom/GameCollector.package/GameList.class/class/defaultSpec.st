specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :col | 
			col
				newRow: [ :row | row add: #gameList ] height: 150;
				newRow: [ :row | row add: #gameInfo ] height: 100 ];
		yourself