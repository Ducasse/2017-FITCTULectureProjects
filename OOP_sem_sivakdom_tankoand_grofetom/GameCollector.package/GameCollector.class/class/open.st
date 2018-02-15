instance creation
open
	windows isEmpty
		ifTrue: [ windows add: MainGameCollectorWindow new.
			(windows at: windows size)
				openWithSpec;
				askOkToClose: false ]
		ifFalse: [ (windows at: windows size) window close.
			self open ]