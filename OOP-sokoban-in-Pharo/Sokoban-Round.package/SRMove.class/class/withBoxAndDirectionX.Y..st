instance creation
withBoxAndDirectionX: aDirectionX Y: aDirectionY
	| i |
	i := SRMove new.
	i directionX: aDirectionX Y: aDirectionY.
	i withBox: true.
	^ i