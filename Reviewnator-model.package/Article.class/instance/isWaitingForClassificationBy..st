opinions-classifications
isWaitingForClassificationBy: aUser
	^ (classifications anySatisfy: [ :each | each author = aUser ]) not