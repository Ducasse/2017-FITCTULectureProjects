initialization
initialize
	super initialize.
	title := ''.
	rating := 0.
	releaseYear := 0.
	description := ''.
	completed := false.
	price := 0.
	posterUrl := ''.
	platform := GamePlatform new.
	genre := GameGenre new.
	state := GameState new