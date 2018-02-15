converting
containingLinksPercentage
	| sum |
	(tweets count = 0) ifTrue: [ ^ 0 asFloat ].
	sum := self links size.
	
	^ ((sum / tweets count) asFloat * 100)