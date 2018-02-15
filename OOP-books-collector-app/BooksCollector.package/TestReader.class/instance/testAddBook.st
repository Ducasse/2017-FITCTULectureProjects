adding
testAddBook

|reader|

reader := Reader new.
reader addBook: Book new.

self assert: reader books size equals: 1.
self assert: (reader books at: 0) title equals: ''.