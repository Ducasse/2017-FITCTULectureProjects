initialization
getEquipmentBonusAttributes
	| attributes filteredEquipment |
	attributes := Attributes new.
	
	filteredEquipment := equipment select: [ :each | each notNil ].
	
	filteredEquipment
		valuesDo: [ :item | attributes := attributes + item getAffectedAttributes ].
	^ attributes