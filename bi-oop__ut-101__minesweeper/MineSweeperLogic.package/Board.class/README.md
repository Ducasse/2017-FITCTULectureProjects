"New game"
b:= Board new.
b apiGenerateEmptyBoardX: 5 Y: 5 Mines: 3.
"SHOW BOARD"


"LEFT CLICK"

b apiOpenAtX: 2 Y: 2.
"If user clicks first tile - set mines, open tile"
"returns FALSE if it's a mine"
"returns TRUE if open was succesful or it was already opened"

"OR"

"RIGHT CLICK"
b apiToggleMarkAtX: 4 Y:3.
"returns FALSE if tile is opened"
"returns TRUE if tile mark was changed"

"REFRESH BOARD"