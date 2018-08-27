renderning
renderArticle: article order: n summarizedBy: summary on: html
	html tableRow
		class: (self agreementClassForArticleRow: article summarizedBy: summary);
		with: [ html tableData: [ html text: n printString ].
			html tableData: [ self renderArticleSummary: article on: html ].
			html tableData: [ self renderArticleTags: article on: html ].
			html
				tableData: [ self renderClassificationSummaryFor: article on: html.
					html tbsButton
						beDefault;
						with: [ html anchor
								callback: [ self parent classifyArticle: article ];
								with: [ summary waiting == 0
										ifTrue: [ html text: '(re)classify' ]
										ifFalse: [ html text: 'classify' ] ] ] ].
			html
				tableData: [ html paragraph: 'Available: ' , (self coReview reviewsFor: article) size printString.
					html tbsButton
						beDefault;
						with: [ html anchor
								callback: [ self parent reviewArticle: article ];
								with: [ (self coReview hasReviewFor: article by: self currentUser)
										ifTrue: [ html text: '(re)review' ]
										ifFalse: [ html text: 'review' ] ] ] ] ]