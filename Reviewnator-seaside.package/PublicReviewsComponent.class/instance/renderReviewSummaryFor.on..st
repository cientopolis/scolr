rendering
renderReviewSummaryFor: each on: html
	html
		listItem: [ html anchor
				callback: [ review := each ];
				with: [ html strong: each title, ' - ' ].
			html
				text: ' ' , each notes;
				break;
				text: each allArticles size printString , ' articles, and ';
				text: each contributors size printString , ' contributors so far' ]