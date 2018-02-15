initialize
"protocol: #initialize"

testInitialize

|b|
BooksCollectorREST reset.
b := BooksCollectorREST instance.
b initOn: 8080.
b start.

self assert: b booksCount equals: 0.
self assert: ( ZnEasy get: 'http://localhost:8080/books') code equals: 200.

b stop.