checkingSetup
checkForCorrectSetup
    (variables isNil)
      ifTrue: [ Transcript show: '[variables] is not set in MapField object'; cr. ]