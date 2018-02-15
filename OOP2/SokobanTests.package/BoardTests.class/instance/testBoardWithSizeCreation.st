tests
testBoardWithSizeCreation
|board|
board := Board width: 20 height: 10. 
self assert: (board matrix rowCount ) equals: 10. 
self assert: (board matrix columnCount) equals: 20.