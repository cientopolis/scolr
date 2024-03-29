rendering
renderArticle: article order: n on: html
	html tableRow
		class: (self agreementClassForArticleRow: article);
		with: [ html tableData: [ html text: n printString ].
			html tableData: [ self renderArticleSummary: article on: html ].
			html tableData: [ self renderArticleTags: article on: html ].
			html
				tableData: [ html
						paragraph:
							((article reviews collect: [ :each | each author shortenedUsername ])
								fold: [ :first :second | first , ', ' , second ]
								ifEmpty: [ '' ]) ].
			html
				tableData: [ html anchor
						callback: [ self parent reviewArticle: article ];
						with: [ html tbsButton
								beExtraSmall;
								with: [ (article reviewBy: self currentUser) isNil
										ifTrue: [ html text: 'review' ]
										ifFalse: [ html text: 'update' ] ] ] ] ]