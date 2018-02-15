tests
testInitialize
	|book|
	book := Book title: 'nineteen-eighty-four' author: 'George Orwell' genre: 'Dystopian Novel' isbn: 'ISBN-2525633342' year: '1920'. 
	self assert: book title equals: 'nineteen-eighty-four'.
	self assert: book author equals: 'George Orwell'.
	self assert: book genre equals: 'Dystopian Novel'.
	self assert: book isbn equals: 'ISBN-2525633342'.
	self assert: book year equals: '1920'.
	