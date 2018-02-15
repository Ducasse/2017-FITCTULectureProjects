tests
testPutAndGetReader

|b reader|
BooksCollectorREST reset.
b := BooksCollectorREST instance.
b initOn: 8080.
b start.

self assert: ( ZnEasy get: 'http://localhost:8080/readers') entity string equals: '{}'.
self assert: ( ZnEasy get: 'http://localhost:8080/readers/1') entity string equals: '''Not found.'''.

ZnClient new
   url: 'http://localhost:8080/readers/1';
	formAt: 'firstName' put: 'Honza'; 
	formAt: 'lastName' put: 'Novak'; 
	formAt: 'nationality' put: 'Czech'; 
	formAt: 'birthYear' put: '1999'; 
   put.

self assert:  (( ZnEasy get: 'http://localhost:8080/readers') entity string) equals: (STON toString: b readers).
	
self assert:  (( ZnEasy get: 'http://localhost:8080/readers/1') entity string) equals: 
	(STON toString: (b readers at: '1')).
	
reader := (STONReader on: (STON toString: (b readers at: '1')) readStream) next.
self assert: reader firstName equals: 'Honza'.
self assert: reader lastName equals: 'Novak'.
self assert: reader nationality equals: 'Czech'.
self assert: reader birthYear equals: 1999.
	
self assert: b readersCount equals: 1.

"test default values"
ZnClient new
   url: 'http://localhost:8080/readers/2';
   put.

self assert:  (( ZnEasy get: 'http://localhost:8080/readers') entity string) equals: (STON toString: b readers).
	
self assert:  (( ZnEasy get: 'http://localhost:8080/readers/2') entity string) equals: 
	(STON toString: (b readers at: '2')).
	
reader := (STONReader on: (STON toString: (b readers at: '2')) readStream) next.
self assert: reader firstName equals: #unknown.
self assert: reader lastName equals: #unknown.
self assert: reader nationality equals: #unknown.
self assert: reader birthYear equals: 2017.

self assert: b readersCount equals: 2.

"rewriting or updating"
ZnClient new
   url: 'http://localhost:8080/readers/1';
	formAt: 'firstName' put: 'Petr'; 
	formAt: 'lastName' put: 'Novak'; 
   put.

self assert: (( ZnEasy get: 'http://localhost:8080/readers/1') entity string) equals: 
	(STON toString: (b readers at: '1')).
	
reader := (STONReader on: (STON toString: (b readers at: '1')) readStream) next.
self assert: reader firstName equals: 'Petr'.
self assert: reader lastName equals: 'Novak'.
self assert: reader nationality equals: #unknown.
self assert: reader birthYear equals: 2017.
	
self assert: b readersCount equals: 2.

b stop.