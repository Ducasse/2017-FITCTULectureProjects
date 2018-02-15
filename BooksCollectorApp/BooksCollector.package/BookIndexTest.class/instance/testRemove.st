tests
testRemove
	| book book2 bookIndex|
	book := Book title: 'Title' author: 'Author' genre: 'Genre' isbn: '123' year: '2017'.
	book2 := Book title: 'Title2' author: 'Author2' genre: 'Genre2' isbn: '1234' year: '2018'.
	bookIndex := BookIndex new.
	bookIndex add: book.
	bookIndex add: book2.
	bookIndex remove: book2.
	self assert: ((bookIndex includes: book2) not) & (bookIndex includes: book).
	
	