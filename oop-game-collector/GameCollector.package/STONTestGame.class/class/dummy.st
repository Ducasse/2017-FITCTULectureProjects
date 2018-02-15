instance creation
dummy
	| title description |
	title := String streamContents: [ :stream |
		stream << 'Game'; print: 999 atRandom  ].
	description := String streamContents: [ :stream |
		stream << 'Description: '; print: 999 atRandom ].
	^ self new
		title: title;
		description: description;
		yourself