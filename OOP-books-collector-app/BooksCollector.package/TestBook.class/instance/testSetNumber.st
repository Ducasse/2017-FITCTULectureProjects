accessing
testSetNumber
|book|
book := Book new.
book number: 3.

self assert: book number equals: 3.