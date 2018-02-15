as yet unclassified
transformStatusArrayToList: statuses
	| tweetCollection tweet |
	tweetCollection := LinkedList new.
	
	1 to: statuses size do: [ 
		:index |
		tweet := Status initializeWithDictionary: (statuses at: index).
		tweetCollection add: tweet.
	].

	^ tweetCollection.