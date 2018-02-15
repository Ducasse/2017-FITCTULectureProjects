initialize
testInitialize

|book|
book := Book new.

self assert: book id equals: 0.
self assert: book title equals: ''.
self assert: book genre equals: ''.
self assert: book year equals: Date today year.
self assert: book writer equals: ''.
self assert: book publisher equals: ''.
self assert: book number equals: 1.