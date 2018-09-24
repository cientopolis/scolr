querying
tagsFor: anArticle
	| tags |
	tags := Set new.
	anArticle collectTagsIn: tags.
	^ tags