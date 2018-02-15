as yet unclassified
searchTimelineOfUser: anUserName count: aCnt
	| timeline |
	
	timeline := twitterSDK statusesUserTimelineWithUserID: nil orScreenName: anUserName
	 	sinceID: nil
	 	count: aCnt
	 	maxID: nil
	 	trimUser: nil
	 	excludeReplies: nil
	 	includeRetweets: nil.
	
	^ self buildTimeline: (self transformStatusArrayToList: timeline).