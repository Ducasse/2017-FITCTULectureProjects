initialization
prepareFightOrderQueue
	fightOrderQueue addAll: monsters; addAll: player heroes.
	
	fightOrderQueue sort: [ :first :second | 
		(first attributes getAttributeOfType:  AttributeTypeEnum agility)
		>
		(second attributes getAttributeOfType: AttributeTypeEnum agility)
		 ].
	fightOrderQueue first isActive: true.
	fightOrderQueue announceAsReady.