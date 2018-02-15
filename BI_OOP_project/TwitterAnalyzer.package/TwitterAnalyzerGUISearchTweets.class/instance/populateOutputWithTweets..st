accessing
populateOutputWithTweets: tweetBundle
	textFieldOut text: (tweetBundle printWith: VisitorDetailedPrinter new)
	
	"tweetBundle count = 0
		ifTrue: [ textFieldOut text: 'no tweets :(' ]
		ifFalse: [ textFieldOut text: (tweetBundle printWith: VisitorDetailedPrinter) ]."