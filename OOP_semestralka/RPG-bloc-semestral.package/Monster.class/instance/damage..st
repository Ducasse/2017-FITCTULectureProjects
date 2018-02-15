properties
"damage: adamage
 |ret MinionsDied healthBefore|
   (self isDead)
 ifTrue: [ ret := 0 ]
 ifFalse: [   
  healthBefore := (self healthTotal).
  MinionsDied := (adamage / healthMax) asInteger.
    count := count - MinionsDied.
  healthCurrent := healthMax - (adamage % healthMax).
  ret := healthBefore - self healthTotal.
  ].
 
 (self isDead)
 ifTrue: [
 playerOwner removeMonster: self. ].
 
 ^ret"
 
 damage: aValue
 |ret damageLeft damageOver tokill|
   (self isDead)
 ifTrue: [ ret := 0 ]
 ifFalse: [ 
  
  (aValue >= self healthTotal)
 ifTrue: [ ret := self healthTotal.
  count := 0. ]
 ifFalse: [ 
  
  
  (aValue < self healthCurrent)
 ifTrue: [ ret := aValue.
  healthCurrent := self healthCurrent - aValue.
   ]
 ifFalse: [ 
  
  (aValue = self healthCurrent)
 ifTrue: [ ret := healthCurrent.
  count := 0. ].

  ].

  ].


(aValue > self healthCurrent)
    ifTrue: [
      ret := healthCurrent.
      healthCurrent := (self healthTotal).
      count := count - 1.

      damageLeft := aValue - (self healthCurrent).

      tokill := damageLeft / (self healthTotal).
      damageOver := damageLeft % (self healthTotal).

      healthCurrent := healthCurrent - damageOver.
      ret := ret + damageOver.

      count := count - tokill.
     ].
    
  ].
 
  (self isDead)
 ifTrue: [
 playerOwner removeMonster: self.
 ].

 ^ret
 
"written artefact in Java language" 
"public DamageResult damage(int by)
 {
  if(isDead())
   return new DamageResult(0, 0);
  
  // if the damage will kill all these creatures
  if (by >= getHealthTotal())
  {
   int previous_count = count;
   int damageDone = getHealthTotal();
   count = 0;
   onDie();
   return new DamageResult(damageDone, previous_count);
  }

  if (by < healthCurrentSingle)
  {
   healthCurrentSingle -= by;
   return new DamageResult(by, 0);
  }
  if (by == healthCurrentSingle)
  {
   count--;
   if(count == 0)
    onDie();
   return new DamageResult(by, 1);
  }
  if (by > healthCurrentSingle)
  {
   int damageDone = healthCurrentSingle;
   healthCurrentSingle = this.healthMaxSingle;
   count--;

   int damageLeft = by - healthCurrentSingle;

   int tokill = damageLeft / healthMaxSingle;
   int damageOver = damageLeft % healthMaxSingle;

   healthCurrentSingle -= damageOver;
   damageDone += damageOver;

   count -= tokill;

   if (count < 1)
    onDie();

   return new DamageResult(damageDone, tokill + 1);
  }
  throw new RuntimeException();
 }
"