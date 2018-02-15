accessing
testSetWriter

|book|
book := Book new.
book writer: 'Honza Novak'.

self assert: book id equals: 0.
self assert: book writer equals: 'Honza Novak'.