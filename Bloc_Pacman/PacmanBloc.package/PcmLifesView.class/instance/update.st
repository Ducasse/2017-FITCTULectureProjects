initialization
update
	| newChild |
	self removeChildren.
	self layout columnCount: 2.
	self addChild: (PcmLabelView withText: 'Lifes: ').
	model lifes asString
		do: [ :each | 
			newChild := PcmNumberView new.
			newChild number: each digitValue.
			self addChild: newChild ]