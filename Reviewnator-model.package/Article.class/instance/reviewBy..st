opinions
reviewBy: aUser
	^ reviews detect: [ :each | each author = aUser ] ifNone: [ nil ]