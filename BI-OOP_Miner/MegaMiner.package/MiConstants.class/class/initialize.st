initialization
initialize
	"for saving"
	MiSaveFileReference := FileSystem disk workingDirectory / 'megaminer.save'.
	
	"for miner"
	MiMinerMoveTime := 1.0.
	MiMinerStartPosition := 1@1.
	MiMinerTemperatureLimit := 50.
	
	"base game info"
	MiLogo := MiMiner new acceptVisitor: MiTextureVisitor getInstance.
	MiGameName := 'MegaMiner'.
	
	"for UI"
	MiGameSize := 640@480.
	MiBlockSize := 80@80.
	MiBlockRowCount := MiGameSize x / MiBlockSize x.
	MiBlockColumnCount := MiGameSize y / MiBlockSize y.
	
	"set up borders for view , area in which miner moves freely "
	MiViewBorderX := 3.
	MiViewBorderY := 2.
	
	MiMapSize := 20@30.
	
	