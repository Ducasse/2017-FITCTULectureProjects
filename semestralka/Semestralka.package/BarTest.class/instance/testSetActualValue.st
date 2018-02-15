tests-setter
testSetActualValue
|bar|
bar := Bar new: 100.

"new value is > min and < max"
self assert: ((bar setActualValue: 3) getActualValue) equals: 3. 
"new value is > max"
self assert: ((bar setActualValue: 200) getActualValue) equals: (bar getMax).
self assert: ((bar setActualValue: 200) getActualValue) equals: 100.
"new value is < min"
"self assert: ((bar setActualValue: -3) getActualValue) equals: . - not supported yet " 
