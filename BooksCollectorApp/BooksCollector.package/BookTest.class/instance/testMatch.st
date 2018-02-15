tests
testMatch
 |pattern pattern2 book|
	book := Book title: 'nineteen-eighty-four' author: 'George Orwell' genre: 'Dystopian Novel' isbn: 'ISBN-2525633342' year: '1920'. 
	pattern := '*nineteen*'.
	pattern2 := '*IAmNotTheBooksPattern*'.
	self assert: (book match: pattern) equals: true.
	self assert: (book match: pattern2) equals: false.
