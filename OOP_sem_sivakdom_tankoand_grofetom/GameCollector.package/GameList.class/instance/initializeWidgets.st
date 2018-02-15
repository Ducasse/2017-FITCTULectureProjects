initialization
initializeWidgets
	| idCol nameCol lengthCol |
	gameInfo := self instantiate: GameInfo.
	gameList := TreeModel new.
	idCol := TreeColumnModel new
		displayBlock: [ :node | node content at: 1 ];
		headerAction: [ :node | gameList roots ];
		headerLabel: 'ID'.
	nameCol := TreeColumnModel new
		displayBlock: [ :node | node content at: 2 ];
		headerLabel: 'Name'.
	lengthCol := TreeColumnModel new
		displayBlock: [ :node | node content at: 3 ];
		headerLabel: 'Length'.
	gameList
		columns:
			{idCol.
			nameCol.
			lengthCol}.
	"TU NAHRADIT DATA ZA DATA ZO ZDROJA"
	gameList
		roots:
			{{'1' . 'Half-life' . '0' . 'First person action game'}.
			{'2' . 'Bulanci' . '66' . 'Third person shooter'}}