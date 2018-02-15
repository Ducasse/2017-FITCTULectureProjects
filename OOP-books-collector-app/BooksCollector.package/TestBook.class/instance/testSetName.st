accessing
testSetName

|book|
book := Book new.
book title: 'O Cervene Karkulce'.

self assert: book title equals: 'O Cervene Karkulce'.