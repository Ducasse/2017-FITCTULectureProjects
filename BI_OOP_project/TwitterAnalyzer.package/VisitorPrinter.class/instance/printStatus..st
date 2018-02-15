printing
printStatus: aStatus
	^ String streamContents: [ :stream |
					stream
						<< aStatus status. ].