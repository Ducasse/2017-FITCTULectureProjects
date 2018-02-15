tests
testLoadFromDict
	| st dict |
	st := Status new.
	dict := Dictionary new.
	st loadFromDict: dict.
	self assert: st tweet == dict.
	self assert: st tweet class equals: Dictionary.