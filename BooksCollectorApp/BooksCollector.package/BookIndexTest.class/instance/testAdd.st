tests
testAdd
	| bki b1 b2 |
	bki := BookIndex new.
	b1 := Book
		title: 'aTitle1'
		author: 'anAuthor1'
		genre: ''
		isbn: ''
		year: ''.
	b2 := Book
		title: 'aTitle2'
		author: 'anAuthor1'
		genre: ''
		isbn: ''
		year: ''.
	bki add: b1; add: b2.
	self assert: (bki whereTitle: 'aTitle1') equals: (Set new add: b1; yourself).
	self assert: (bki whereTitle: 'aTitle2') equals: (Set new add: b2; yourself).
	self assert: (bki whereAuthor: 'anAuthor1') equals: (Set new add: b1; add: b2; yourself).
	self assert: (bki whereAuthor: 'anAuthor2') equals: (Set new)