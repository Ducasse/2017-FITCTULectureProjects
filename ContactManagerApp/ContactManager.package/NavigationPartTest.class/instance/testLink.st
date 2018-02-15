tests-accessing
testLink
	|navigationPart|.
	navigationPart := NavigationPart new.
	navigationPart link: 'http://beautyislands.com'.
	self assert: navigationPart link equals: 'http://beautyislands.com'