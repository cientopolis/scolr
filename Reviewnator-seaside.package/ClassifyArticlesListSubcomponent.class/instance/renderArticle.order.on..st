rendering
renderArticle: article order: n on: html
	| classification |
	html tableRow
		class: (self agreementClassForArticleRow: article);
		with: [ html tableData: [ html text: n printString ].
			html tableData: [ self renderArticleSummary: article on: html ].
			html tableData: [ self renderArticleTags: article on: html ].
			html
				tableData: [ self renderClassificationSummaryFor: article on: html ].
			html
				tableData: [ classification := article classificationBy: self currentUser.
					classification
						ifNotNil: [ html paragraph: classification decision ].
					html anchor
						callback: [ self parent classifyArticle: article ];
						with: [ html tbsButton
								beExtraSmall;
								with: (classification ifNil: [ 'classify' ] ifNotNil: [ 'change' ]) ] ] ]