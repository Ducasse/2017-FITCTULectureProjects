tests
testCleanCoroutines
	| b |
	b := BehaviourTestChild new.
	b startCoroutine: [ :g | ].
	self assert: b coroutines size equals: 1.
	b cleanCoroutines.
	self assert: b coroutines isEmpty