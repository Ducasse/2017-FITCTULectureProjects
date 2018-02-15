tests
testNew
|bar|
bar := Bar new: 13.
self assert: (bar getMax) equals: 13.
self assert: (bar getMin) equals: 0.
self assert: (bar getActualValue) equals: 0.