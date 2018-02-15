accessing
maxWordCount
	| max arr |
	tweets count = 0
		ifTrue: [ ^ 0 ].
	max := 0.
	arr := tweets tweets.
	
	arr do: [ :tweet | 
			|tokens| tokens:= tweet status findTokens: ' '.
			(tokens size > max) ifTrue: [ max := tokens size ]
			 ].
	
	^ max.