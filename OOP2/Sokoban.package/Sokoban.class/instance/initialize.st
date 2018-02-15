initialization
initialize
	levels := Dictionary new.
	bestScores := Dictionary new.
	currentLevel := nil.
	presenter := Presenter new.
	keyController := BlEventHandler
		on: BlKeystrokeEvent
		do: [ :anEvent | self handleKeyboardEvent: anEvent ].
	presenter attachKeyboardHandeler: keyController.
	levelListPath := 'levelList.txt'