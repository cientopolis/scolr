rendering-articles
renderArticle: article order: n summarizedBy: summary on: html
	html tableRow
		class: (self agreementClassForArticleRow: article summarizedBy: summary);
		with: [ 
					html tableData: [ html text: n printString ].
					html tableData: [ self renderArticleSummary: article on: html ].
					html tableData: [ self renderArticleTags: article on: html ].
					html tableData: [ self renderClassificationSummaryFor: article on: html ].
					html
						tableData: [ 
							html anchor
								callback: [ self classifyArticle: article ];
								with: 'classify'.
							summary waiting == 0
								ifTrue: [ 
									html
										break;
										text: '(done)' ] ].
					html
						tableData: [ 
							html anchor
								callback: [ self reviewArticle: article ];
								with: 'review'.
							(self coReview hasReviewFor: article by: currentUser)
								ifTrue: [ 
									html
										break;
										text: '(done)' ] ] ]