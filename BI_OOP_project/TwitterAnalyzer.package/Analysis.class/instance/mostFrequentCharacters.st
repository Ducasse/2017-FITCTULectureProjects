as yet unclassified
mostFrequentCharacters
	| arr chars |
	
	chars := Bag new.
	arr := tweets tweets.
	
	arr do: [ :tweet | 
			| txt |
			txt := tweet status trim.
			
			1 to: txt size do: [ 
				:i |
				(txt at: i) isLetter ifTrue: [ chars add: (txt at: i) asLowercase ].
				 ].
		 ].

	^ chars sortedCounts.