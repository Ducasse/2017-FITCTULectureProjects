initialization
addLevelByFilenameAbsolute: filename id: id
	| level |
	level := Level new.
	level filename: filename.
	levels at: id put: level