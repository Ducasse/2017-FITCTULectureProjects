accessing
initWithMap: m width: w height: h player: p goalCount: gc
	map := m.
	width := w.
	height := h.
	player := p.
	goalCount := gc.
	announcer := Announcer new.
	history := History new.