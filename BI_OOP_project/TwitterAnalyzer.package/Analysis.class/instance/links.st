pages
links
	| urls tweetArray |
	urls := Set new.
	tweetArray := tweets tweets asArray.
	
	1 to: tweetArray size do: [ 
		:index |
		| array |
		array := (tweetArray at: index) links.
		1 to: array size do: [ 
			:i |
			urls add: (array at: i) asString.
			 ].
		 ].
	
	^ urls asArray.