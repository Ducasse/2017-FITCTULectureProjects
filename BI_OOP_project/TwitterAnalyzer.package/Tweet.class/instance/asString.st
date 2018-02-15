converting
asString
	^ String streamContents: [ :stream |
					stream
						<< '@';
						<< self userScreenName; << ':'; crlf; tab;
						<< self status. ].