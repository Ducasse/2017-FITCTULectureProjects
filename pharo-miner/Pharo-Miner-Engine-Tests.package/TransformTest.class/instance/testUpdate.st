tests
testUpdate
	| go tr |
	tr := Transform new.
	go := GameObject new addBehaviour: tr; yourself.
	go announcer when: RelocationEvent do: [ test := 17 ].
	test := 0.
	tr position: 10@5.
	self assert: test equals: 0.
	tr update.
	self assert: test equals: 17.