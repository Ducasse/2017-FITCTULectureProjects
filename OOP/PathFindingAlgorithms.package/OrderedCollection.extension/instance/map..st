*PathFindingAlgorithms
map: aBlock
1 to: self size do: [ :index | self at: index put: (aBlock value: (self at: index)) ].
^self