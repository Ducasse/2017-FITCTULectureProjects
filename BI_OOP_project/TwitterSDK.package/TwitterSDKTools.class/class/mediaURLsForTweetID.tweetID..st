public
mediaURLsForTweetID: aTwitterSDK tweetID: anInteger
	^ self mediaURLsForTweet: (TwitterSDKTools
		retrieveTweet: aTwitterSDK
		tweetID: anInteger)