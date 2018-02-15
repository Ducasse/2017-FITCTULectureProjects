cleanup
cleanBehaviours
	behaviours removeAllSuchThat: [ :each | each gameObject isNil ]