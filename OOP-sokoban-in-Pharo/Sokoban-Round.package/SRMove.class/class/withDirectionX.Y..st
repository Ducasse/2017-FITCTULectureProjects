instance creation
withDirectionX: aDirectionX Y: aDirectionY
	| i |
	i := SRMove new.
	i directionX: aDirectionX Y: aDirectionY.
	i withBox: false.
	^ i