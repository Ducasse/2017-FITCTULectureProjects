physics
updateFlying
	touchingtiles at: Vector2D down ifPresent: [ flying := false ] ifAbsent: [ flying := true].