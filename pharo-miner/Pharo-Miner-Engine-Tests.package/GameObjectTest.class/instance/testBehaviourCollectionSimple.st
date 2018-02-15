tests
testBehaviourCollectionSimple
	| go br |
	go := GameObject new.
	br := BehaviourTestChild new.
	go addBehaviour: br.
	self assert: (go getBehaviour: BehaviourTestChild) equals: br.
	go removeBehaviour: br.
	self assert: (go getBehaviour: BehaviourTestChild) equals: nil