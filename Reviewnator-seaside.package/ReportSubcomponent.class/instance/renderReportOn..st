rendering
renderReportOn: html
	self
		renderSummaryOn: html;
		renderSearchResultsSummaryOn: html;
		renderRemarksOfTheClassificationPhaseOn: html;
		renderRemarksOfTheReviewPhaseOn: html;
		renderReviewsOn: html;
		renderSynthesisAndAnalysisOn: html;
		renderConclusionsOn: html;
		renderExcludedArticlesOn: html.