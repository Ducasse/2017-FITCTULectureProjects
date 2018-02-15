pages
tags
	| tags tweetArray |
	tags := Bag new.
	tweetArray := tweets tweets asArray.
	
	1 to: tweetArray size do: [ 
		:index |
		| array |
		array := ((tweetArray at: index) tags) asArray.
		1 to: array size do: [ 
			:i |
			tags add: (array at: i). 
			].
		 ].
	^ tags.