instance creation
open
	"Opens GUI's window"

	gui ifNotNil: [ gui close ].
	gui := self openWithSpec.
	gui maximize.
	gui widget isResizeable: false