initialization
createHeroes
	| hero |
	1 to: 4 do: [ 
		:number|
		hero := Hero new.
		hero name: ('Hero n',number asString).
		hero picturePath: 'pharo-local/iceberg/rathojak/DarknessAwaits/pic/hero_n',number asString ,'.png'.
		self addHero: hero.
		 ]