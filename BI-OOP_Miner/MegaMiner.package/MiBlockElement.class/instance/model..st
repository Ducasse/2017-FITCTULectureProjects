accessing
model: aBlockholder
	super model: aBlockholder.
	
	"we should update a visual representation of the block when it changes"
	self model when: MiBlockChangedAnnouncement send: #blockChanged to: self.
	self blockChanged