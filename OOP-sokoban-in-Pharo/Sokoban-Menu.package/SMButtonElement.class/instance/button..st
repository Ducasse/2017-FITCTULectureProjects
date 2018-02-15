accessing
button: aSMButtonModel
	self
		assert: [ aSMButtonModel isNotNil ]
		description: [ 'Button model must not be nil' ].
	
	button := aSMButtonModel.

	button announcer when: SMChangeTextAnnouncement  send: #changeText to: self.