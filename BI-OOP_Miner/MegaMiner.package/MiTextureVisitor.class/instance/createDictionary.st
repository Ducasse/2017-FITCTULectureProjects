initialization
createDictionary
	^{
		self initBlock: MiBlock withTexture: 'dirt.jpg' .
		self initBlock: MiDirtBlock withTexture: 'dirt.jpg' .
		self initBlock: MiStoneBlock withTexture: 'stone.jpg' .
		self initBlock: MiCrackedStoneBlock withTexture: 'cracked_stone.jpg' .
		self initBlock: MiCoalBlock withTexture: 'coal.jpg' .
		self initBlock: MiIronBlock withTexture: 'iron_ore.jpg' .
		self initBlock: MiSilverBlock withTexture: 'silver_ore.jpg' .
		self initBlock: MiGoldBlock withTexture: 'gold_ore.jpg' .
		self initBlock: MiSapphireBlock withTexture: 'sapphire.jpg' .
		self initBlock: MiRubyBlock withTexture: 'ruby.jpg' .
		self initBlock: MiDiamondBlock withTexture: 'diamond.jpg' .
		self initBlock: MiBitcoinBlock withTexture: 'bitcoin.jpg' .	
		self initBlock: MiMiner withTexture: 'miner.png' .
		self initBlock: MiGasStationBlock withTexture: 'gas_station.jpg' .
		self initBlock: MiTeleportCenterBlock withTexture: 'teleport_building.jpg' .
		self initBlock: MiGameSaveBlock withTexture: 'save_building.jpg' .
		self initBlock: MiRepairCenterBlock withTexture: 'repair_building.jpg' .
		self initBlock: MiTradingCenterBlock withTexture: 'shop_building.jpg' .
		self initBlock: MiUpgradeCenterBlock withTexture: 'upgrade_center.jpg' .
		
		self initBlock: MiTeleportBlock withTexture: 'teleport.jpg' .
		self initBlock: MiSurfaceBlock withTexture: 'sky.jpg' .
		self initBlock: MiUndergroundBlock withTexture: 'background.jpg' .
	} asDictionary