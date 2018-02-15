tests
testMatchesGenre
	| bookIndex book1 book2 book3 resp |
	bookIndex := BookIndex new.
	book1 := Book title: 'A' author: 'A'  genre: 'Fantasy' isbn: '1'  year: '1920'.
	book2 := Book title: 'A' author: 'A'  genre: 'Science Fiction' isbn: '2'  year: '2020'.
	book3 := Book title: 'B' author: 'B'  genre: 'Romance Novel' isbn: '3'  year: '1918'.
	bookIndex add: book1; add: book2; add: book3.
	resp := bookIndex matchesGenre: '*fantasy*'.
	self assert: (resp includes: book1) & (resp includes: book2) not & (resp includes: book3) not. 
	