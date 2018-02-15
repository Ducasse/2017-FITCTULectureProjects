tests
testPutIntoEmptyMatrix
|board cell|
board := Board new.
cell := Floor new.
self assert: (board put: cell X: 1 Y: 1) equals: nil.
