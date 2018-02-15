tests
testWhereGenre
	| bookIndex book1 book2 book3 resp |
	bookIndex := BookIndex new.
	book1 := Book title: 'A' author: 'A'  genre: 'A' isbn: 1  year:  2017.
	book2 := Book title: 'A' author: 'A'  genre: 'A' isbn: 2  year:  2017.
	book3 := Book title: 'B' author: 'B'  genre: 'B' isbn: 3  year:  2018.
	bookIndex add: book1; add: book2; add: book3.
	resp := bookIndex whereGenre: 'A'.
	self assert: (resp includes: book1) & (resp includes: book2) & (resp includes: book3)not.
	