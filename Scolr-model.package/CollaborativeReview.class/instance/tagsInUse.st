querying
tagsInUse
	| tags |
	tags := Set new.
	self allArticles do: [ :each | each collectTagsIn: tags ].
	^ tags asSortedCollection