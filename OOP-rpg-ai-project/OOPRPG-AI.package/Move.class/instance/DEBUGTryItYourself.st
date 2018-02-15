debug
DEBUGTryItYourself

"This is just for testing and will soon be removed.
 Just copy it to the playground or try in here."

| moveSpell moveGuard moveHit moveMiss moveDied unit1 unit2 unit3|
unit1 := Unit new.
unit1 nickname: 'Mr. A'.
unit1 hp: 20.
unit2 := Unit new.
unit2 nickname: 'Mr. B'.
unit2 hp: 33.
unit3 := Unit new.
unit3 nickname: 'Mr. B'.
unit3 hp: -7.

moveSpell := Move unit: unit1 cast: Slow on: unit2. 
moveGuard := Move unit: unit1 guarded: unit2.
moveHit := Move unit: unit1 attacked: unit2 dealing: 15.
moveMiss := Move unit: unit1 attacked: unit2 dealing: 0. 
moveDied := Move unit: unit1 attacked: unit3  dealing: 40.
 
moveSpell asString, moveGuard asString, 
moveHit asString, moveMiss asString, moveDied asString.
