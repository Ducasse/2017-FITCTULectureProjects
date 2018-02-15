accessing
minCharacterCount
	| min arr |
	tweets count = 0
		ifTrue: [ ^ 0 ].
	min := 140.
	arr := tweets tweets.
	arr
		do: [ :tweet | 
			| tmp |
			tmp := tweet status size.
			min := min min: tmp ].
	^ min