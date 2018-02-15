checkingSetup
checkForCorrectSetup
    (TextDatabase isNil)
      ifTrue: [ Transcript show: '[TextDatabase] is not set in Variables object'; cr. ]
		ifFalse: [ TextDatabase checkForCorrectSetup ] 