tests
testGameObject
	| br go |
	br := self createSubject.
	self assert: br gameObject equals: nil.
	go := GameObject new.
	br gameObject: go.
	self assert: br gameObject equals: go