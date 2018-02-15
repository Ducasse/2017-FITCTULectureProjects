specs
defaultSpec
 ^ SpecColumnLayout composed
	newRow: [ :row | row add: #gameList];
	newRow: [ :row | row add: #addGameButton; add: #remGameButton; add: #editGameButton. ] height: 50;
	yourself.