initialization
createWithWidth: anIntegerX andHeight: anIntegerY ObsticalChance: percentage Player: player

"creates a rectangle like board of given width and height and fills it with squares. Indexing of positions starts with 0@0"

|board|
board := self new.
board createWithWidth: anIntegerX andHeight: anIntegerY; generateMountains: percentage Player: player.
^ board.
