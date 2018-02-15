accessing
uniqueInstance
    ^ uniqueInstance ifNil: [ uniqueInstance := GameDB basicNew initialize]