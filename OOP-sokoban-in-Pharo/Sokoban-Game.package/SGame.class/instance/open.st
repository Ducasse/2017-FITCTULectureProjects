instance creation
open
	| grid menu map round |
	window := SGameWindowElement new.
	menu := SMMenuInit new.
	map := MapLoader new.
	grid := menu grid.
	window initMenu: grid.
	window initTextstrip.
	round := SRound new.
	round graphicInstance: window.
	round menuInstance: menu model.
	round mapInstance: map.
	window roundInstance: round.
	menu roundInstance: round.
	window open.
	round level: 1.