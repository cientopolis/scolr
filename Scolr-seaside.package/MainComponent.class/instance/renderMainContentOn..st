rendering
renderMainContentOn: html
	self renderActivitySelectorTabsOn: html.
	html break.
	selectedActivity = #plan
		ifTrue: [ self renderPlanActivityOn: html ].
	selectedActivity = #upload
		ifTrue: [ self renderUploadActivityOn: html ].
	selectedActivity = #classify
		ifTrue: [ self renderClassifyActivityOn: html ].
	selectedActivity = #review
		ifTrue: [ self renderReviewActivityOn: html ].
	selectedActivity = #cluster
		ifTrue: [ self renderClusterActivityOn: html ].
	selectedActivity = #report
		ifTrue: [ self renderReportActivityOn: html ].
	selectedActivity = #discuss
		ifTrue: [ self renderDiscussActivityOn: html ]