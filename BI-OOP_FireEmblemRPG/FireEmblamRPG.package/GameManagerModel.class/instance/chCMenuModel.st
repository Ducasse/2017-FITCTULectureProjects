accessing
chCMenuModel
	^ chCMenuModel ifNil: [ chCMenuModel  := ChCCompleteModel new gameManagerModel: self]