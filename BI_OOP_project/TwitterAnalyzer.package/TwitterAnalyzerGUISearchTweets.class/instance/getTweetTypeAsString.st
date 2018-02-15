as yet unclassified
getTweetTypeAsString
	radioButtonMixed state ifTrue: [ ^ 'mixed' ].
	radioButtonPopular state ifTrue: [ ^ 'popular' ].
	radioButtonRecent state ifTrue: [ ^ 'recent' ].
	^ 'mixed'.