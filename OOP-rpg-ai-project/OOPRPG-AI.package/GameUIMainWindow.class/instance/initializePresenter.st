initialization
initializePresenter
	btnTurn action: [ ui onTurnSelected ].
	btnAttack action: [ ui onAttackSelected ].
	btnGuard action: [ ui onGuardSelected ].
	btnSpell action: [ ui onSpellSelected ]