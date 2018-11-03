rendering-classification-phase
renderReportOfTagUseDuringClassificationOn: html
	self
		renderReportOfClassificationTagsIn: self coReview includedArticles
		on: html
		comment: 'The following tags were present in included articles: '