tests
testCoroutines
	| b |
	b := self createSubject.
	b coroutines: 'x'.
	self assert: b coroutines equals: 'x'