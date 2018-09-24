reading
importRow: row ignoreDuplicatesIn: articles
	| article |
	article := mapper map: row.
	article isNil | (articles select: [ :each | each mightBeADuplicateOf: article ]) notEmpty
		ifTrue: [ importReport ignoreArticle: article ]
		ifFalse: [ self addArticle: article ]