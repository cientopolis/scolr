rendering
renderReportOn: html
	self
		renderSummaryOn: html;
		renderSearchResultsSummaryOn: html;
		renderRemarksOfTheClassificationPhaseOn: html;
		renderRemarksOfTheReviewPhaseOn: html.
	html heading
		level: 2;
		with: 'Review notes'.
	self renderReviewsByArticleOn: html.
	self
		renderSynthesisAndAnalysisOn: html;
		renderConclusionsOn: html;
		renderExcludedArticlesOn: html