querying-classifications
mostPeopleAgreeToExclude: anArticle

	| cl out |
	cl := self classificationsFor: anArticle.
	cl isEmpty ifTrue: [^false].
	out := (cl select: [:each | each toExclude]) size.
	^out == cl size