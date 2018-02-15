initialization
initializeWidgets
	labelMoves := self instantiate: LabelModel.
	exitButton := self instantiate: ButtonModel.
	exitButton label: 'Exit'.
	undoButton := self instantiate: ButtonModel.
	undoButton label: 'Undo move [E]'.
	resetButton := self instantiate: ButtonModel.
	resetButton label: 'Reset level'.
	redoButton := self instantiate: ButtonModel.
	redoButton label: 'Redo move [R]'