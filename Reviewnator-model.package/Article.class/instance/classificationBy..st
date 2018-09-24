opinions-classifications
classificationBy: aUser
	^ classifications detect: [ :each | each author = aUser ] ifNone: [ nil ]