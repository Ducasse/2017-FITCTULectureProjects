accessing
testSetGenre
|book|
book := Book new.
book genre: 'comedy'.

self assert: book genre equals: 'comedy'.