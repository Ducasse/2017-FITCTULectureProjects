specs
defaultSpec
	 ^ SpecLayout composed
	newColumn: [ :rr |
	rr newRow: [ :r | r newColumn: [ :col | col
			newRow: [ :row | row add: #gameTypeLabel ] height: 50;
			newRow: [ :row | row add: #gameNameLabel ];
			newRow: [ :row | row add: #gameDescLabel ].
		] width: 100;
		newColumn: [ :col | col
			newRow: [ :row | row add: #gameTypeDropList ] height: 50;
			newRow: [ :row | row add: #gameNameText ];
			newRow: [ :row | row add: #gameDescText ].
		].];
	 newRow: [ :rw | rw add: #addGameButton ] height: 50 ]
	yourself.