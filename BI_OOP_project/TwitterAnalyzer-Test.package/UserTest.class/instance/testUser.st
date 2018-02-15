tests
testUser
	| user |
	user := User new.
	self assert: user class equals: User.