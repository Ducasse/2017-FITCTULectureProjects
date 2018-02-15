accessing
model: aPcmBlock
	model := aPcmBlock.
	model item ifNil: [ ^ self ].
	itemView := model item view.
	self addChild: itemView.
	model announcer when: PcmItemConsumed send: #hideConsumable to: self.
	model announcer when: PcmItemRenewed send: #renewConsumable to: self.