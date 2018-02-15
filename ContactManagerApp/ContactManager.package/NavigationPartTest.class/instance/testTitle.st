tests-accessing
testTitle
	|navigationPart|.
	navigationPart := NavigationPart new.
	navigationPart title: 'Beauty Islands'.
	self assert: navigationPart title equals: 'Beauty Islands'