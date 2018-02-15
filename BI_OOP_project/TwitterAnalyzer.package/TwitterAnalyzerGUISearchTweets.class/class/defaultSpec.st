specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :col | 
							col newRow: [ :row | row add: #labelText ] height: 20.
							col newRow: [ :row | row add: #textInputText ] height: 40.
							col newRow: [ :row | row add: #labelTweetType ] height: 20.
							col newRow: [ :row | row add: #radioButtonMixed; add: #radioButtonRecent; add: #radioButtonPopular ] height: 30.
							col newRow: [ :row |
								row newColumn: [ :c | c add: #labelCount ] width: 50.
								row newColumn: [ :c | c add: #dropListCnt ]. ] height: 30.
							col addSplitter.
							col newRow: [ :row | row add: #radioButtonIncludeGeoInfo ] height: 30.
							col newRow: [ :row | 
								row newColumn: [ :col2 | col2 add: #labelLatitude ] width: 80.
								row newColumn: [ :col2 | col2 add: #textInputLatitude ].
							] height: 30.
							col newRow: [ :row | 
								row newColumn: [ :col2 | col2 add: #labelLongitude ] width: 80.
								row newColumn: [ :col2 | col2 add: #textInputLongitude ].
							] height: 30.
							col newRow: [ :row | 
								row newColumn: [ :col2 | col2 add: #labelRadius ] width: 80.
								row newColumn: [ :col2 | col2 add: #dropDownRadius ].
							] height: 30.
							col newRow: [ :row | 
								row newColumn: [ :col2 | 
									col2 newRow: [ :row2 | row2 add: #buttonSearch ] height: 30.
									col2 newRow: [ :row2 | row2 add: #goToUserSearchButton ] height: 30.
									].
							] height: 100.
			 			] origin: 0@0 corner: 0.15@1;
		newColumn: [ :col | col add: #textFieldOut ] origin: 0.15@0 corner: 0.6@1;
		newColumn: [ :col | col add: #analysisOutputWindow ] origin: 0.6@0 corner: 1@1;		
		yourself.