converting
containingTagsPercentage
	| sum |
	(tweets count = 0) ifTrue: [ ^ 0 asFloat ].
	
	sum := 0.
	
	self tags keysAndValuesDo: [ :key :value | sum := sum + value ].
	
	^ ((sum / tweets count) asFloat * 100)