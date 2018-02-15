accessing
testSetBooks

|person coll|
coll := Dictionary new.
coll at: (Book new id) put: Book new.
person := Reader new.
person books: coll.

self assert: person books size equals: 1.
self assert: (person books at: 0) title equals: ''.
