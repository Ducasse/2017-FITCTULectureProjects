tests
testPutIntoMatrix
|board cell|
board := Board width: 10 height: 10 .
cell := Floor new.
self assert: (board atX: 2 Y: 3) equals: nil.
board put: cell X: 2 Y: 3.
self assert: (board atX: 2 Y: 3) equals: cell.

