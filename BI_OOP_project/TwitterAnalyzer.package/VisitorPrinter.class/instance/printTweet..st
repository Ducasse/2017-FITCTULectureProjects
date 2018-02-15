printing
printTweet: aTweet
	^ String streamContents: [ :stream |
					stream
						<< '@';
						<< aTweet userScreenName; << ':'; crlf; tab;
						<< aTweet status. ].