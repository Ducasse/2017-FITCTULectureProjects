tests-setter
testMaxMinActualValue
|bar|
bar := Bar max: 100 min: 10 actualValue: 50.
self assert: (bar getMax) equals: 100.
self assert: (bar getMin) equals: 10.
self assert: (bar getActualValue) equals: 50.