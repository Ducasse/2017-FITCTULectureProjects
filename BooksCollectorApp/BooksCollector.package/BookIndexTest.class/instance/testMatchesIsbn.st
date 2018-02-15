tests
testMatchesIsbn
	| bookIndex book1 book2 book3 resp |
	bookIndex := BookIndex new.
	book1 := Book title: 'A' author: 'A'  genre: 'A' isbn: 'ISBN 123'  year: '1920'.
	book2 := Book title: 'A' author: 'A'  genre: 'A' isbn: 'ISBN 12345'  year: '2020'.
	book3 := Book title: 'B' author: 'B'  genre: 'B' isbn: 'ISBN 54321'  year: '1918'.
	bookIndex add: book1; add: book2; add: book3.
	resp := bookIndex matchesIsbn: '*123*'.
	self assert: (resp includes: book1) & (resp includes: book2) & (resp includes: book3) not. 
	