updating
update
	| newChild |
	self removeChildren.
	self layout columnCount: 5.
	self addChild: (PcmLabelView withText: 'Score: ').
	model points asString
		do: [ :each | 
			newChild := PcmNumberView new.
			newChild number: each digitValue.
			self addChild: newChild ]