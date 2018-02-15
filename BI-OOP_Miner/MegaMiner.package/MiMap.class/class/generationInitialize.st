generating
generationInitialize
	"This method initializes generator and buildings variables. Has to be called before generating."

	generator := Random new.
	buildings := 
	{
		MiRepairCenterBlock .
		MiSurfaceBlock .
		MiTradingCenterBlock .
		MiSurfaceBlock .
		MiUpgradeCenterBlock .
		MiSurfaceBlock .
		MiTeleportCenterBlock .
		MiSurfaceBlock .
		MiGasStationBlock .
		MiSurfaceBlock .
		MiGameSaveBlock
	}