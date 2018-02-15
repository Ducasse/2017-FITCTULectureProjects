as yet unclassified
populateUserTimelineTextField: timeline
		
	radioButtonDetailedView state
		ifTrue: [ textFieldTweets text: (timeline printWith: VisitorDetailedPrinter new). ]	
		ifFalse: [ textFieldTweets text: (timeline printWith: VisitorPrinter new). ].