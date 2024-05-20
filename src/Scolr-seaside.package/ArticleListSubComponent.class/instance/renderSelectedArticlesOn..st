renderning-list
renderSelectedArticlesOn: html
	| articles order |
	articles := self sort: self filteredArticles.
	articles
		ifEmpty: [ html tbsAlert
				beWarning;
				with:
					'Nothing to show. Try uploading more articles or deactivating some filters.' ].
	order := 1.
	html tbsTable
		beBordered;
		with: [ self renderTableHeaderOn: html.
			html
				tableBody: [ articles
						do: [ :each | 
							self renderArticle: each order: order on: html.
							order := order + 1 ] ] ]