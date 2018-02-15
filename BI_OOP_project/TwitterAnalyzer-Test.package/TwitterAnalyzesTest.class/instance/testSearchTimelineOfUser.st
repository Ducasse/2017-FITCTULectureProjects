tests
testSearchTimelineOfUser
	| tw | tw := TwitterAnalyzer instance searchTimelineOfUser: 'brychon1' count: nil.
	
	self assert: tw class equals: Timeline.
	self assert: (tw tweets at: 1) class equals: Status.
	self assert: tw count > 3.