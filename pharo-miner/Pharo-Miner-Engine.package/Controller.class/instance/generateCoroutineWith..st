utility
generateCoroutineWith: aBlock
^ [ :g | [ aBlock value. g yield: self ] repeat ]