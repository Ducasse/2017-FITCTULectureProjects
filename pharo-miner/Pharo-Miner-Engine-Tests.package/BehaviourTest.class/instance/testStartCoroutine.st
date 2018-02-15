tests
testStartCoroutine
	| b |
	b := BehaviourTestChild new.
	b test: 0.
	b
		startCoroutine: [ :g | 
			b test: 10.
			g yield: self.
			b test: 20.
			g yield: self.
			b test: 5 ].
	self assert: b coroutines size equals: 1.
	self assert: b test equals: 10.
	b update.
	self assert: b test equals: 21.
	b update.
	self assert: b test equals: 6.
	b update.
	self assert: b test equals: 7.
	self assert: b coroutines isEmpty