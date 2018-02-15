accessing
maxCharacterCount
	| max arr |
	tweets count = 0
		ifTrue: [ ^ 0 ].
	max := 0.
	arr := tweets tweets.
	arr
		do: [ :tweet | 
			| tmp |
			tmp := tweet status size.
			max := max max: tmp ].
	^ max