initialization
initialize
	super initialize.
	
	attributes := Dictionary new.
	
	attributes 
			at: AttributeTypeEnum agility put: 0;
			at: AttributeTypeEnum dexterity put: 0;
			at: AttributeTypeEnum intelligence put: 0;
			at: AttributeTypeEnum luck put: 0;
			at: AttributeTypeEnum strenght put: 0;
			at: AttributeTypeEnum vitality put: 0.
					 