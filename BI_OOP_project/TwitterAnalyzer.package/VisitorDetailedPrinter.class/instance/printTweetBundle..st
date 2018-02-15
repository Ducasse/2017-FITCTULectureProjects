printing
printTweetBundle: aTweetBundle
	^ String streamContents: [ 
		:stream |
				1 to: (aTweetBundle tweets size) do: [ 
					:index |
							stream << (aTweetBundle tweets at: index) asString; crlf.
							stream << '-----------------------------------------------------------------------------------'; crlf.
		 			].
	].