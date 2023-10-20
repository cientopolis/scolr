rendering
renderArticle: article order: n on: html

	html tableRow
		class: (self agreementClassForArticleRow: article);
		with: [ 
			html tableData: [ html text: n printString ].
			html tableData: [ self renderArticleSummary: article on: html ].
			html tableData: [ self renderArticleTags: article on: html ].
			html tableData: [ 
					self renderClassificationSummaryFor: article on: html ].
			html tableData: [ 
					self renderClassificationOptionsFor: article on: html ] ]