creation
x: xSize y: ySize mines: minesAmount
	^ self new
	generateEmptyBoardX: xSize Y: ySize;
	mines: minesAmount;
	generateMinesExceptX: 1 ExceptY: 1;
	yourself.