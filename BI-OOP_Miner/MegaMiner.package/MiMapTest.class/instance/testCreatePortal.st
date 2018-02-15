tests
testCreatePortal
	| map pos prevPos |
	map := MiMap random.
	pos := (map width / 2) @ (map height / 2).
	map createPortal: pos.
	self assert: map portal target equals: pos.
	prevPos := pos.
	pos := 1 @ 1.
	map createPortal: pos.
	"Cannot create portal on surface"
	self assert: map portal target equals: prevPos