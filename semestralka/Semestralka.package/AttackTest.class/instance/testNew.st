tests-initalize
testNew
|a|
a := Attack new: 13.
self assert: (a getDamage) equals: 13.