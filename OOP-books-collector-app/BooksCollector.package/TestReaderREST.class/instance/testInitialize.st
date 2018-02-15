tests
testInitialize

|b|
BooksCollectorREST reset.
b := BooksCollectorREST instance.
b initOn: 8000.
b start.

self assert: b readersCount equals: 0.
self assert: ( ZnEasy get: 'http://localhost:8000/readers') code equals: 200.

b stop.