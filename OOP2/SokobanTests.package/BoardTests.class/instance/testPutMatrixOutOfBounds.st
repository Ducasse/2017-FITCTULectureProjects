tests
testPutMatrixOutOfBounds
|board cell|
board := Board width: 10 height: 10 .
cell := Floor new.
self assert: (board put: cell X: 12 Y: 13) equals: nil.
self assert: (board put: cell X: 0 Y: 0) equals: nil.
self assert: (board put: cell X: -1 Y: -1) equals: nil.


