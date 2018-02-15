accessing
testSetBooks

|b|
b := BookREST new.

self assert: b booksCount equals: 0.

b books at: 1 put: Book new.

self assert: b booksCount equals: 1.
self assert: (b books at: 1) title equals: ''.