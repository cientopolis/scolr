rendering-classification-phase
renderReportOfPublicationYearDuringClassificationOn: html
	self
		renderYearsOf: self coReview includedArticles
		on: html
		comment: 'Included articles were published in the following years: '