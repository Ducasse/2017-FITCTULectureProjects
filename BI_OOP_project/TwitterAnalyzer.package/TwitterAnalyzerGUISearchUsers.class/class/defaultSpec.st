specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :col | 
							col newRow: [ :row | row add: #labelUser ] height: 20.
							col newRow: [ :row | row add: #textFieldUser ] height: 40.
							col newRow: [ :row | row add: #radioButtonDetailedView ] height: 20.
							col newRow: [ :row |
								row newColumn: [ :c | c add: #labelCount ] width: 50.
								row newColumn: [ :c | c add: #dropListCnt ]. ] height: 30.
							col newRow: [ :row | 
								row newColumn: [ :col2 | 
									col2 newRow: [ :row2 | row2 add: #buttonSearch ] height: 30.
									col2 newRow: [ :row2 | row2 add: #goToTweetSearchButton ] height: 30.
									].
							] height: 100.
			 			] origin: 0@0 corner: 0.15@1;
		newColumn: [ :col | col add: #textFieldUserInfo ] origin: 0.15@0 corner: 0.3@1;
		newColumn: [ :col | col add: #textFieldTweets ] origin: 0.3@0 corner: 0.7@1;
		newColumn: [ :col | col add: #analysisWindow ] origin: 0.7@0 corner: 1@1;	
		yourself.