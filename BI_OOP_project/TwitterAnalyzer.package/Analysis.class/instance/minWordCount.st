accessing
minWordCount
	| min arr |
	tweets count = 0
		ifTrue: [ ^ 0 ].
	min := 140.
	
	arr := tweets tweets.
	
	arr do: [ :tweet | 
			|tokens| tokens:= tweet status findTokens: ' '.
			(tokens size < min) ifTrue: [ min := tokens size ]
			 ].
	
	^ min.