adding
testAddBooks

|b|
BooksCollectorREST reset.
b := BooksCollectorREST instance.
b initOn: 8080.
b start.

self assert: ( ZnEasy get: 'http://localhost:8080/books') entity string equals: '{}'.
self assert: ( ZnEasy get: 'http://localhost:8080/books/1') entity string equals: '''Not found.'''.

ZnClient new
   url: 'http://localhost:8080/books/1';
   formAt: 'title' put: 'O cervene Karkulce';
	formAt: 'genre' put: 'pohadka';
   formAt: 'year' put: '1999';
	formAt: 'writer' put: 'Dvorak';
   formAt: 'publisher' put: 'Albatros';
   put.

self assert: (b bookRest books size) equals: 1.	
self assert: (b bookRest books at: '1') number equals: 1.


ZnClient new
   url: 'http://localhost:8080/books/1/add';
   put.

self assert: (b bookRest books at: '1') number equals: 2.

ZnClient new
   url: 'http://localhost:8080/books/1/add';
	formAt: 'number' put: '5';
   put.

self assert: (b bookRest books at: '1') number equals: 7.

b stop.