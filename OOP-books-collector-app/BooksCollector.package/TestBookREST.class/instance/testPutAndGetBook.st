controlling
"protocol: #controlling"

testPutAndGetBook

|b book|
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

self assert: (( ZnEasy get: 'http://localhost:8080/books') entity string ) equals: (STON toString: b books).

self assert: (( ZnEasy get: 'http://localhost:8080/books/1') entity string) equals: (STON toString: (b books at: '1')).

book := (STONReader on: (STON toString: (b books at: '1')) readStream) next.
self assert: book title equals: 'O cervene Karkulce'.
self assert: book genre equals: 'pohadka'.
self assert: book year equals: 1999.
self assert: book writer equals: 'Dvorak'.
self assert: book publisher equals: 'Albatros'.
self assert: book number equals: 1.
	
self assert: b booksCount equals: 1.


ZnClient new
   url: 'http://localhost:8080/books/2';
   put.

self assert: (( ZnEasy get: 'http://localhost:8080/books') entity string ) equals: (STON toString: b books).

self assert: (( ZnEasy get: 'http://localhost:8080/books/2') entity string) equals: (STON toString: (b books at: '2')).

book := (STONReader on: (STON toString: (b books at: '2')) readStream) next.
self assert: book title equals: #unknown.
self assert: book genre equals: #unknown.
self assert: book year equals: 2017.
self assert: book writer equals: #unknown.
self assert: book publisher equals: #unknown.
self assert: book number equals: 1.

self assert: b booksCount equals: 2.

ZnClient new
   url: 'http://localhost:8080/books/1';
   formAt: 'title' put: 'O cervene Karkulce';
	formAt: 'genre' put: 'pohadka';
   formAt: 'year' put: '2000';
	formAt: 'writer' add: 'Dvorak';
   formAt: 'publisher' add: 'Albatros';
   put.

self assert: (( ZnEasy get: 'http://localhost:8080/books/1') entity string) equals: (STON toString: (b books at: '1')).

book := (STONReader on: (STON toString: (b books at: '1')) readStream) next.
self assert: book title equals: 'O cervene Karkulce'.
self assert: book genre equals: 'pohadka'.
self assert: book year equals: 2000.
self assert: book writer equals: 'Dvorak'.
self assert: book publisher equals: 'Albatros'.
self assert: book number equals: 1.

b stop.