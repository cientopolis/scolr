rendering
renderReviewSummaryFor: repo on: html
	html
		listItem: [ html anchor
				callback: [ selectedRepository := repo ];
				with: [ html strong: repo coReview title , ' - ' ].
			html
				text: ' ' , repo coReview notes;
				break;
				text: repo coReview allArticles size printString , ' articles, and ';
				text: repo coReview contributors size printString , ' contributors so far' ]