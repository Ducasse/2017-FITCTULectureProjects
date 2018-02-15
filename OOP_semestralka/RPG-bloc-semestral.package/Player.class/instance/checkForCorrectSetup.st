checkingSetup
checkForCorrectSetup
    (gameBoard isNil)
      ifTrue: [ Transcript show: '[gameBoard] is not set in Player object'; cr. ]