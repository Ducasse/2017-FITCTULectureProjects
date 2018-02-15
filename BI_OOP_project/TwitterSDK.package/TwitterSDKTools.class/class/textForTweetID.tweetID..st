public
textForTweetID: aTwitterSDK tweetID: anInteger
	| response |
	response := aTwitterSDK
		statusesLookupWithIDs: anInteger
		includeEntities: true
		trimUser: true
		map: nil
		includeExtAltText: true.
	(response isNil or: [ response isEmpty ])
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ self textForTweet: response last ]