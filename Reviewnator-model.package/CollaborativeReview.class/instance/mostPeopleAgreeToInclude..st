querying-classifications
mostPeopleAgreeToInclude: anArticle
	| cl in |
	cl := self classificationsFor: anArticle.
	cl isEmpty ifTrue: [^false].
	in := (cl select: [:each | each toInclude]) size.
	^(in == cl size)