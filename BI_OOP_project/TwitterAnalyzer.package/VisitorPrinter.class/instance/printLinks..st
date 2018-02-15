printing
printLinks: anAnalysis
	| lin |
	lin := anAnalysis links.
	
	^ String streamContents: [ 
		:stream |
				1 to: (lin size) do: [ 
					:index |
							stream << (lin at: index) asString; crlf.
		 			].
	].