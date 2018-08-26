rendering
renderContentOn: html
	self renderUpperToolbarOn: html.
	html heading
		level: 2;
		with: 'Available result sets'.
	self renderResultSetListOn: html.
	html heading
		level: 2;
		with: 'Articles in selected result sets'.
	self renderSortingCriteriaOn: html.
	html break.
	self renderFiltersOn: html.
	html break.
	self renderDetailsOptionsOn: html.
	html break.
	html break.
	self renderSelectedArticlesOn: html.
	html
		break;
		break.
	html horizontalRule.
	html paragraph: 'Use the following features at your own risk.'.
	html paragraph: 'Perform a backup before attempting an ugrade. Restore the backup afterwards.'.
	self renderLowerToolbarOn: html