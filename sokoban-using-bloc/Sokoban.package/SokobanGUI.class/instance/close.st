actions
close
	"Shows confirmation dialog to verify the action of closing GUI"

	gui
		ifNotNil: [ self
				makeDialog: 'Do you really want to exit?'
				modal: true
				onAction: [ gui close.
					self cleanup.
					true ] ]