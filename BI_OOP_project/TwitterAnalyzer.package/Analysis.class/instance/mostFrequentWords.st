as yet unclassified
mostFrequentWords
	| arr words |
	
	words := Bag new.
	arr := tweets tweets.
	
	arr do: [ :tweet | 
			| tokens | 
			tokens := tweet status findTokens: ' '.
			tokens do: [ :word | 
				| w |
				w := word trim onlyLetters asLowercase.
				(w ~= 'rt') & (w ~= 'a') & (w ~= 'an') & (w ~= '	') & (w ~= 'the') & (w ~= 'in') & (w ~= 'and')
				& (w ~= 'to') & (w ~= 'of') & (w ~= 'not') & (w ~= 'is') & (w ~= 'on') & (w ~= 'for') & (w ~= 'this') & (w ~= 'that') & (w ~= String crlf) & (w ~= '')
					ifTrue: [ words add: w. ].
			 ].
		 ].
"	list := LinkedList new.
	(words sortedCounts size > 5) ifTrue: [ cnt := 5 ] ifFalse: [ cnt := words sortedCounts size ].
	1 to: cnt do: [ :i | list add: (words sortedCounts at: i) value. ].
	^ list asArray."
	^ words sortedCounts.