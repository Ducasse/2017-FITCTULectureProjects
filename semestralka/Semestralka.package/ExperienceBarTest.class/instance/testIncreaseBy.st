tests-setting
testIncreaseBy
"the getMax method will be probably changed. In order to run this test succesfully, it is needed to change values expected after increaseBy method run when you change the newMax method."
|bar|
bar := ExperienceBar new: 100.

"< max"
bar increaseBy: 10.
self assert: (bar getActualValue) equals: 10.
self assert: (bar getMin) equals: 0.
self assert: (bar getMax) equals: 100.
self assert: (bar getLevel) equals: 0.

"= max"
bar increaseBy: 90.
self assert: (bar getActualValue) equals: 100.
self assert: (bar getMin) equals: 100.
self assert: (bar getMax) equals: 200.
self assert: (bar getLevel) equals: 1.

"> max"
bar := ExperienceBar new: 100.
bar increaseBy: 203.
self assert: (bar getActualValue) equals: 203.
self assert: (bar getMin) equals: 200.
self assert: (bar getMax) equals: 300.
self assert: (bar getLevel) equals: 2.