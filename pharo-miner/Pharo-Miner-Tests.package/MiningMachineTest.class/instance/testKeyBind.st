tests
testKeyBind
	|machine|
	machine := MiningMachine new.
	machine keybind: #(1 2 "ahoj").
	self assert: machine keybind equals: #(1 2 "ahoj").
	
	machine keybind: #("test" "druhy" 3 45 "klavesa").
	self assert: machine keybind equals: #("test" "druhy" 3 45 "klavesa").
	
