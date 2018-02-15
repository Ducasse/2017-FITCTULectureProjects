as yet unclassified
transformTweetArrayToList: statuses
	| tweetCollection tweet |
	tweetCollection := LinkedList new.
	
	1 to: statuses size do: [ 
		:index |
		tweet := Tweet initializeWithDictionary: (statuses at: index). 	
		tweetCollection add: tweet.
	].

	^ tweetCollection.