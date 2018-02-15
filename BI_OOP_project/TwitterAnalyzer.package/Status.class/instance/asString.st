converting
asString
	^ String streamContents: [ :stream |
					stream
						<< self status. ].