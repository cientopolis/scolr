opinions-classifications
isWaitingForDecisionBy: aUser
	| cls |
	cls := classifications detect: [ :each | each author = aUser ] ifNone: [ ^ true ].
	^cls undecided  