tests
testDeleteReader

|b|
BooksCollectorREST reset.
b := BooksCollectorREST instance.
b initOn: 8000.
b start.

self assert: ( ZnEasy delete: 'http://localhost:8000/readers/1') entity string equals: '''Not found.'''.

ZnClient new
   url: 'http://localhost:8000/readers/1';
	formAt: 'firstName' put: 'Honza'; 
	formAt: 'lastName' put: 'Novak'; 
   put.

self assert: (( ZnEasy get: 'http://localhost:8000/readers') entity string) equals: (STON toString: b readers).
	
self assert: b readersCount equals: 1.

ZnClient new
   url: 'http://localhost:8000/readers/1';
   delete.

self assert: ( ZnEasy get: 'http://localhost:8000/readers') entity string equals: '{}'.
self assert: ( ZnEasy get: 'http://localhost:8000/readers/1') entity string equals: '''Not found.'''.
self assert: b readersCount equals: 0.

b stop.