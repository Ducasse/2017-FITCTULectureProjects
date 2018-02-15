accessing
chCMenuModel2
	^ chCMenuModel2 ifNil: [ chCMenuModel2  := ChCCompleteModel new gameManagerModel: self ]