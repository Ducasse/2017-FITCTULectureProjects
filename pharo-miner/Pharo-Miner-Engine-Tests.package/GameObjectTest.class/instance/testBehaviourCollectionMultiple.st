tests
testBehaviourCollectionMultiple
	| go br1 br2 |
	go := GameObject new.
	br1 := BehaviourTestChild new.
	br2 := BehaviourTestChildOther new.
	go addBehaviour: br1.
	go addBehaviour: br2.
	self assert: (go getBehaviour: BehaviourTestChildOther) equals: br2.
	self
		assertCollection: (go getBehaviours: BehaviourTestChild)
		hasSameElements:
			{br1.
			br2}.
	go removeBehaviours: BehaviourTestChild.
	self assert: (go getBehaviours: BehaviourTestChild) isEmpty