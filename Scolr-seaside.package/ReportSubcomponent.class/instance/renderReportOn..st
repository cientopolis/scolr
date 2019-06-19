rendering
renderReportOn: html
	self
		renderSummaryOn: html;
		renderSearchResultsSummaryOn: html;
		renderRemarksOfTheClassificationPhaseOn: html;
		renderRemarksOfTheReviewPhaseOn: html.
	self renderReviewNotesOn: html.
	self
		renderSynthesisAndAnalysisOn: html;
		renderConclusionsOn: html;
		renderExcludedArticlesOn: html