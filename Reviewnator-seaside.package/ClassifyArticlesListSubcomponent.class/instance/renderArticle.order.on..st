rendering
renderArticle: article order: n on: html
	html tableRow
		class: (self agreementClassForArticleRow: article);
		with: [ html tableData: [ html text: n printString ].
			html tableData: [ self renderArticleSummary: article on: html ].
			html tableData: [ self renderArticleTags: article on: html ].
			html tableData: [ self renderClassificationSummaryFor: article on: html ].
			html
				tableData: [ html tbsButton
						beExtraSmall;
						with: [ html anchor
								callback: [ self parent classifyArticle: article ];
								with: [ (article isWaitingForDecisionBy: self currentUser)
										ifTrue: [ html text: 'classify' ]
										ifFalse: [ html text: 'update' ] ] ] ] ]