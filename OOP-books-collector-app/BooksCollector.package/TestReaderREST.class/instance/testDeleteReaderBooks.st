tests books
testDeleteReaderBooks

|b|
b := BooksCollectorREST instance.
b init.
b start.

ZnClient new
   url: 'http://localhost:8080/books/1';
   formAt: 'title' put: 'O cervene Karkulce';
	formAt: 'genre' put: 'pohadka';
   formAt: 'year' put: '1999';
	formAt: 'writer' put: 'Dvorak';
   formAt: 'publisher' put: 'Albatros';
   put.

self assert: (b bookRest booksCount) equals: 1.

self assert: (b bookRest booksCount) equals: 1.

ZnClient new
   url: 'http://localhost:8080/readers/1';
	formAt: 'firstName' put: 'Honza'; 
	formAt: 'lastName' put: 'Novak'; 
   put.

self assert: (( ZnEasy get: 'http://localhost:8080/readers') entity string) equals: 
	(STON toString: b readerRest readers).
self assert: (b readerRest readersCount) equals: 1.

ZnClient new
   url: 'http://localhost:8080/readers/1/books/1';
   put.

self assert: (b readerRest readers at: '1') books size equals: 1.	
self assert:  (( ZnEasy get: 'http://localhost:8080/readers/1/books') entity string) equals: 
	(STON toString: (b readerRest readers at: '1') books).
self assert: (( ZnEasy get: 'http://localhost:8080/readers/1/books/1') entity string) equals: 
	(STON toString: (((b readerRest readers at: '1') books) at: '1')).
	
ZnClient new
   url: 'http://localhost:8080/readers/1/books/1';
   delete.

self assert: (b readerRest readers at: '1') books size equals: 0.	
self assert:  (( ZnEasy get: 'http://localhost:8080/readers/1/books') entity string) equals: 
	(STON toString: (b readerRest readers at: '1') books).
self assert: (( ZnEasy get: 'http://localhost:8080/readers/1/books/1') entity string) equals: 
	'''Not found.'''.

b stop. 