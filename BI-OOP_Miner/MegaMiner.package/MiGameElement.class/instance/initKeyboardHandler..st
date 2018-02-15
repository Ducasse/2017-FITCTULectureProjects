initialization
initKeyboardHandler: aBlSpace
	"KeyboardHadler is initialized to aBlSpace."
	aBlSpace
		addEventHandler: (BlEventHandler on: BlKeyDownEvent
			do:
				[ :event | 
					"Transcript show: 'keypress: ', event key name; cr."
					"Send keyboard event to game"
					event sendTo: self.
				])

	
