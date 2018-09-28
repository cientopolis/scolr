rendering
renderMainContentOn: html
	html render: reviewSummarySubComponent.
	self renderActivitySelectorTabsOn: html.
	html break.
	selectedActivity = #classify
		ifTrue: [ self renderClassifyActivityOn: html ].
	selectedActivity = #review
		ifTrue: [ self renderReviewActivityOn: html ].
	selectedActivity = #report
		ifTrue: [ self renderReportActivityOn: html ]