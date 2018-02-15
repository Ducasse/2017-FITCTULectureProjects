tests
testTags
	| st |
	st := Status new tags: #('ahoj' 'cus' 'tepic').
	self assert: st tags equals: #('ahoj' 'cus' 'tepic').
	self assert: st tags class equals: Array.
	self assert: st tags size equals: 3.
	self assert: (st tags at: 1) equals: 'ahoj'.