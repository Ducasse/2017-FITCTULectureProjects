canvas methods
initialize
	space ifNil: [ space := BlSpace new. ].
	space addEventHandlerOn: BlSpaceClosedEvent do: [ self updateSpace. ].
	menu := RawMenu new initialize.