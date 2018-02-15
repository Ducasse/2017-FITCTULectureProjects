as yet unclassified
fire: aBlock after: aDuration
	self events add: (OrderedCollection new add: aDuration; add: aBlock; yourself )