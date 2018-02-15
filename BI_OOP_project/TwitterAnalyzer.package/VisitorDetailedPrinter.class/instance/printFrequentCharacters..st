printing
printFrequentCharacters: anAnalysis
	| cnt counts |
	counts := anAnalysis mostFrequentCharacters.
	
	^ String streamContents: [ 
		:stream |
			(counts size > 5) ifTrue: [ cnt := 5 ] ifFalse: [ cnt := counts size ].
			1 to: cnt do: [ :i |
				| assoc |
				assoc := counts at: i.
				stream << assoc value; tab; tab; tab; << assoc key; crlf.	
			]
	].