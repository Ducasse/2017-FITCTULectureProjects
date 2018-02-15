checkingSetup
checkForCorrectSetup
    (loaded)
      ifFalse: [ Transcript show: '[TextDatabase] was not loaded. Call LoadAll'; cr. ]