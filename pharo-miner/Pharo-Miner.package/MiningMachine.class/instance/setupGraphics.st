initialization
setupGraphics
	(self getBehaviour: MultiSpriteRenderer)
		offset: 0 @ -12;
		image: #spriteAvatar;
		rules:
			{([ self flying & (self horizontalSpeed > 0) ] -> #spriteAvatarFlyingRight).
			([ self flying & (self horizontalSpeed < 0) ] -> #spriteAvatarFlyingLeft).
			([ self flying not & (self horizontalSpeed > 0) ] -> #spriteAvatarRight).
			([ self flying not & (self horizontalSpeed < 0) ] -> #spriteAvatarLeft).}