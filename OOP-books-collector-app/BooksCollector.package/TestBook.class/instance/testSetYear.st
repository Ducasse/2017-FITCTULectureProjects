accessing
testSetYear
|book|
book := Book new.
book year: 2004.

self assert: book year equals: 2004.