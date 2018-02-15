tests
testBoardCreationEmpty
|board|
board := Board new.
self assert: (board matrix) equals: nil. 