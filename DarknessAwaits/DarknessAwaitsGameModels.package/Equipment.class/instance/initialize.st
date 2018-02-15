initialization
initialize
	super initialize.
	
	equipment := Dictionary new.
	
	equipment
		at: BodyPartEnum head put: nil;
		at: BodyPartEnum body put: nil;
		at: BodyPartEnum lefthand put: nil;
		at: BodyPartEnum righthand put: nil;
		at: BodyPartEnum legs put: nil;
		at: BodyPartEnum feet put: nil.