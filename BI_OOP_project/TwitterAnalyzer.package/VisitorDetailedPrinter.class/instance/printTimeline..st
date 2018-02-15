printing
printTimeline: aTimeline
	^ String streamContents: [ 
		:stream |
				1 to: (aTimeline tweets size) do: [ 
					:index |
					| status |
					status := aTimeline tweets at: index.
							stream 
									<< status asDetailedString; crlf; << '----------------------------------------------------------------------'; crlf.
		 			].
	].