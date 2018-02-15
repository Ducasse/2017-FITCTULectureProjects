Equipment class represents encapsulation on character equipment. Also provides extended methods.

Used as "storage" of game characters equiped items.

Methods: 
equipItem:
	gets Item as argument. Controls if specified 	part 	of body is occupied by other item. If 	the position 	is occupied, item is unequiped 	and new one is 	equiped
getEquipAtBodyPart:
	 returns Item (nil if empty) at specified position 	of body
getEquipment
	It is just a getter for equipment dictionary
getEquipmentBonusAttributes
	This method calculates all attributes that 	equiped items provide to player.