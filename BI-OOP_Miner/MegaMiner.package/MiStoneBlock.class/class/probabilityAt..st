accessing
probabilityAt: aDepth
^	1 - (MiDirtBlock probabilityAt: aDepth) - (MiCrackedStoneBlock probabilityAt: aDepth) 