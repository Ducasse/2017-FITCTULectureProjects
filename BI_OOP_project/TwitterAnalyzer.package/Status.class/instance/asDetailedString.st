converting
asDetailedString
	^ String streamContents: [ :stream |
					stream
						<< self date; crlf;
						<< self status. ].