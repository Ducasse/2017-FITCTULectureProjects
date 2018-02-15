accessing
button: aButton 
	button := aButton.
	button announcer when: ChCButtonSelectedAnnouncement send: #onSelected to: self.