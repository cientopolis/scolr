reading
importEntry: entry ignoreDuplicatesIn: existingArticles
	| article |
	article := mapper map: entry reportingTo: importReport.
	self add: article ifNotIn: existingArticles