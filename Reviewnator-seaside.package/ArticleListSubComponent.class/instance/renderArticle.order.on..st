renderning-list
renderArticle: article order: n on: html
	html tableRow
		class: (self agreementClassForArticleRow: article);
		with: [ html tableData: [ html text: n printString ].
			html tableData: [ self renderArticleSummary: article on: html ].
			html tableData: [ self renderArticleTags: article on: html ].
			html
				tableData: [ self renderClassificationSummaryFor: article on: html.
					html
						break;
						break.
					html tbsButton
						beExtraSmall;
						with: [ html anchor
								callback: [ self parent classifyArticle: article ];
								with: [ (article isWaitingForDecisionBy: self currentUser)
										ifTrue: [ html text: 'classify' ]
										ifFalse: [ html text: 'update' ] ] ] ].
			html
				tableData: [ html paragraph: 'Available:' , article reviews size printString.
					html tbsButton
						beExtraSmall;
						with: [ html anchor
								callback: [ self parent reviewArticle: article ];
								with: [ (article reviewBy: self currentUser) isNil
										ifTrue: [ html text: 'review' ]
										ifFalse: [ html text: 'update' ] ] ] ] ]