printing
printTimeline: aTimeline

	^ String streamContents: [ 
		:stream |
				1 to: (aTimeline tweets size) do: [ 
					:index |
							stream << (aTimeline tweets at: index) asString; crlf.
							stream << '----------------------------------------------------------------------'; crlf.
		 			].
	].