specs
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :row | 
			row
				add: #labelLoad;
				add: #labelScores ] height: 30;
		newRow: [ :row | 
			row
				add: #listLevels;
				add: #listScores ];
		newRow: [ :row | 
			row
				add: #buttonPlay;
				add: #buttonBack;
				add: #buttonClearScores ]
			height: 30