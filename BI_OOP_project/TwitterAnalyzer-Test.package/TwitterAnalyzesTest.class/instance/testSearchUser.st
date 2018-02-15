tests
testSearchUser
	| us | us := TwitterAnalyzer instance searchUser: 'brychon1' withID: nil.
	
	self assert: us class equals: User.
	self assert: us screenName equals: 'brychon1'.
	self assert: us id equals: 1883420250.