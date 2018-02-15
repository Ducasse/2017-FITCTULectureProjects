printing
printFrequentWords: anAnalysis
	| words cnt |
	words := anAnalysis mostFrequentWords .
	
	^ String streamContents: [ 
		:stream |
			(words size > 5) ifTrue: [ cnt := 5 ] ifFalse: [ cnt := words size ].
			1 to: cnt do: [ :i |
				| assoc |
				assoc := words at: i.
				stream << assoc key; tab; tab; tab; << assoc value; crlf.	
			]
	].