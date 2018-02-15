as yet unclassified
loadMap
	| ios currentLine block |
	map := PcmMap new.
	ios := FileStream oldFileNamed: 'map.txt'.
	map columnsCnt: ios nextLine asNumber.
	map rowsCnt: ios nextLine asNumber.
	totalDots := 0.
	1 to: map rowsCnt do: [ :i | 
		currentLine := ios nextLine.
		1 to: map columnsCnt do: [ :j | 
			(currentLine at: j) = $1
				ifTrue: [ map addBlock: PcmWall new ].
			(currentLine at: j) = $3
				ifTrue: [ block := PcmCoridor new.
					block item: PcmSmallDot new.
					totalDots := totalDots + 1.
					block announcer when: PcmItemConsumed send: #handleSmallDotConsumed to: self.
					map addBlock: block ].
			(currentLine at: j) = $4
				ifTrue: [ block := PcmCoridor new.
					block item: PcmBigDot new.
					block announcer when: PcmItemConsumed send: #handleBigDotConsumed to: self.
					map addBlock: block ].
			(currentLine at: j) = $0
				ifTrue: [ map addBlock: PcmCoridor new ].
			(currentLine at: j) = $2
				ifTrue: [ map addBlock: PcmGhostDoor new ] ] ].
	ios close.
	gameView := PcmGameView new gameModel: self