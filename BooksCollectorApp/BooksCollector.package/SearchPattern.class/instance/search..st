search
search: aBookDB
	| resCollection patternRequest |
	resCollection := searchResultCollectionType new.
	patternRequest := searchRequest deepCopy.
	patternRequest requestValue: '*', patternRequest requestValue, '*'.
	patternRequest inAuthor
		ifTrue: [ self addTo: resCollection from: aBookDB matching: patternRequest by: #author ].
	patternRequest inTitle
		ifTrue: [ self addTo: resCollection from: aBookDB matching: patternRequest by: #title ].
	patternRequest inGenre
		ifTrue: [ self addTo: resCollection from: aBookDB matching: patternRequest by: #genre ].
	patternRequest inYear
		ifTrue: [ self addTo: resCollection from: aBookDB matching: patternRequest by: #year ].
	patternRequest inIsbn
		ifTrue: [ self addTo: resCollection from: aBookDB matching: patternRequest by: #isbn ].
	^ resCollection