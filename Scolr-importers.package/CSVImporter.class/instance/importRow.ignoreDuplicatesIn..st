reading
importRow: row ignoreDuplicatesIn: existingArticles
	| article |
	article := mapper map: row reportingTo: importReport.
	article isNil | (existingArticles select: [ :each | each mightBeADuplicateOf: article ]) notEmpty
		ifTrue: [ importReport ignoreArticle: article ]
		ifFalse: [ articles add: article ]