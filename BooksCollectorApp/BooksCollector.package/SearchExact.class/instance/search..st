search
search: aBookDB
	| resCollection |
	resCollection := searchResultCollectionType new.
	searchRequest inAuthor
		ifTrue: [ self addTo: resCollection from: aBookDB where: #whereAuthor: ].
	searchRequest inTitle
		ifTrue: [ self addTo: resCollection from: aBookDB where: #whereTitle: ].
	searchRequest inGenre
		ifTrue: [ self addTo: resCollection from: aBookDB where: #whereGenre: ].
	searchRequest inYear
		ifTrue: [ self addTo: resCollection from: aBookDB where: #whereYear: ].
	searchRequest inIsbn
		ifTrue: [ self addTo: resCollection from: aBookDB where: #whereIsbn: ].
	^ resCollection