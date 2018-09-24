classifications
everyoneAgreesToExclude: anArticle
  "Returns true only if everyone agreed to exclude it - should be called allPeopleAgreeToExclude"

	| cl out |
	cl := self classificationsFor: anArticle.
	cl isEmpty ifTrue: [^false].
	out := (cl select: [:each | each toExclude]) size.
	^out == cl size