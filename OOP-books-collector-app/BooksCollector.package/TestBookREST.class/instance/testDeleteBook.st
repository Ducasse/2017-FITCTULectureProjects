controlling
"protocol: #controlling"

testDeleteBook

|b|
BooksCollectorREST reset.
b := BooksCollectorREST instance.
b initOn: 8000.
b start.

self assert: ( ZnEasy delete: 'http://localhost:8000/books/1') entity string equals: '''Not found.'''.

ZnClient new
   url: 'http://localhost:8000/books/1';
   formAt: 'title' put: 'O cervene Karkulce';
   formAt: 'year' put: '1999';
   formAt: 'publisher' put: 'Albatros';
	formAt: 'number' put: '2'; 
   put.

self assert: b booksCount equals: 1.
self assert: (b bookRest books at: '1') number equals: 2.

ZnClient new
   url: 'http://localhost:8000/books/1';
   delete.

self assert: b booksCount equals: 0.
self assert: ( ZnEasy delete: 'http://localhost:8000/books/1') entity string equals: '''Not found.'''.

ZnClient new
   url: 'http://localhost:8000/books/1';
   delete.

self assert: ( ZnEasy get: 'http://localhost:8000/books') entity string equals: '{}'.
self assert: ( ZnEasy get: 'http://localhost:8000/books/1') entity string equals: '''Not found.'''.
self assert: b booksCount equals: 0.

b stop.