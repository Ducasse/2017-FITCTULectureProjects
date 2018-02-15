initialization
initializePresenter
        buttonSearch action: [ 
               Transcript crShow: 'Searching for Users from dedicated window.'.
					[ userObj := TwitterAnalyzer instance searchUser: textFieldUser text withID: nil]
					on: Error do: [ :error | userObj := NullUser ].
					[
						timelineObj := TwitterAnalyzer instance searchTimelineOfUser: userObj screenName count: self chosenCntToRetrieve.
						analysis := Analysis of: timelineObj.
						 ]
					on: Error do: [ :error | 
						timelineObj := NullTweetBundle new.
						analysis := Analysis new.
						].
					self populateUserInfoTextField: userObj.
					self populateUserTimelineTextField: timelineObj.
					self populateAnalysisWindow: analysis.
		].
		dropListCnt whenSelectionChanged: [ labelRetrievedTweetsCnt label: 'Retrieved ', self chosenCntToRetrieve asString, ' tweets' ].
		
		goToTweetSearchButton action: [ 
				
				self window close.
				TwitterAnalyzer instance showSearchTweetsWindow.
		].