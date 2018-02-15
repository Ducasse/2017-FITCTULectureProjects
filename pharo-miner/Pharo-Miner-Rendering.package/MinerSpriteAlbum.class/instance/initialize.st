initialization
initialize
	self setSpriteAt: #spriteDirt as: (BlBackground fromImageNamed: self texturesFolder , '128hlina.png');
	setSpriteAt: #spriteDiamond as: (BlBackground fromImageNamed: self texturesFolder , '128Diamant.png');
	setSpriteAt: #spriteGold as: (BlBackground fromImageNamed: self texturesFolder , '128zlato.png');
	setSpriteAt: #spriteIron as: (BlBackground fromImageNamed: self texturesFolder , '128zelezo.png');
	setSpriteAt: #spriteCoal as: (BlBackground fromImageNamed: self texturesFolder , '128uhli.png');
	setSpriteAt: #spriteSilver as: (BlBackground fromImageNamed: self texturesFolder , '128stribro.png');
	setSpriteAt: #spriteSolidStone as: (BlBackground fromImageNamed: self texturesFolder , '128neprokopatelne.png');
	setSpriteAt: #spriteAvatar as: (BlBackground fromImageNamed: self texturesFolder , '128vrtakP.png');
	setSpriteAt: #spriteAvatarFlyingLeft as: (BlBackground fromImageNamed: self texturesFolder , 'VrtakNahoruVrtule.png');
	setSpriteAt: #spriteAvatarFlyingRight as: (BlBackground fromImageNamed: self texturesFolder , 'VrtakNahoruVrtule.png');
	setSpriteAt: #spriteAvatarLeft as: (BlBackground fromImageNamed: self texturesFolder , '128vrtakL.png');
	setSpriteAt: #spriteAvatarRight as: (BlBackground fromImageNamed: self texturesFolder , '128vrtakP.png').