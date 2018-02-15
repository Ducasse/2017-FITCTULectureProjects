initialization
initializePresenter
        buttonSearch action: [ 
               Transcript show: 'Searching Tweets through search window.'; cr.
					[ 
						| geoInfo |
						geoInfo := nil.
						radioButtonIncludeGeoInfo state ifTrue: [ geoInfo := self readGeoInput ].
						Transcript crShow: geoInfo.
						tweets := TwitterAnalyzer instance getTweetsByText: textInputText text type: self tweetType count: self chosenCntToRetrieve geo: geoInfo.
					] on: Error do: [ 
						tweets := NullTweetBundle new.
					].
					Transcript show: tweets class asString; cr.
					self populateOutputWithTweets: tweets.
					self populateAnalysisWindow: tweets.
			].
		
	goToUserSearchButton action: [ 
					
					self window close.
					TwitterAnalyzer instance showSearchUsersWindow .
		 ].