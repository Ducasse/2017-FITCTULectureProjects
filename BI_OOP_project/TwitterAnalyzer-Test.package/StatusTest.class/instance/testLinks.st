tests
testLinks
	| st |
	st := Status new links: #('ahoj' 'cus' 'tepic').
	self assert: st links equals: #('ahoj' 'cus' 'tepic').
	self assert: st links class equals: Array.
	self assert: st links size equals: 3.
	self assert: (st links at: 1) equals: 'ahoj'.