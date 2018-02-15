equipment
addDefaultEquipment

	1 to: player heroes size do:
		[ :num |
		self equipDefaultEquipment: (WeaponItem generateFrom: (weaponsDB at: #w001)) forHero: (player heroes at: num).
		self equipDefaultEquipment: (DefenseItem generateFrom: (defenseDB at: #d001)) forHero: (player heroes at: num).
		self equipDefaultEquipment: (DefenseItem generateFrom: (defenseDB at: #d002)) forHero: (player heroes at: num).
		self equipDefaultEquipment: (DefenseItem generateFrom: (defenseDB at: #d003)) forHero: (player heroes at: num).
		self equipDefaultEquipment: (DefenseItem generateFrom: (defenseDB at: #d004)) forHero: (player heroes at: num).
		].