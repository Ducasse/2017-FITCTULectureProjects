as yet unclassified
avgWordCount
	| sum arr |
	tweets count = 0 ifTrue: [ ^ 0 ].
	
	sum := 0.
	
	arr := tweets tweets.
	
	arr do: [ :tweet | 
			sum := sum + (tweet status findTokens: ' ') size. ].
	
	^ (sum / tweets count) asFloat.