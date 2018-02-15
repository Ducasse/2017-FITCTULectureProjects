accessors
field: aField
	field := aField.
	field announcer when: MSFieldLeftClickAnnoucement send: #invalidate to: self.
	field announcer when: MSFieldMarkedAnnoucement send: #invalidate to: self.
	field announcer when: MSNeighbourMarkedAnnoucement send: #invalidate to: self.