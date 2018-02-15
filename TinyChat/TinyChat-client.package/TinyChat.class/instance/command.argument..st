command
command: aPath argument: anArgument
	^'{1}{2}/{3}' format: { url . aPath . anArgument asString }