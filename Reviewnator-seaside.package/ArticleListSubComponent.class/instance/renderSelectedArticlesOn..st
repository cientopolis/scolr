renderning-list
renderSelectedArticlesOn: html
	| articles order  |
	articles := self filteredArticles.
	order := 1.
	html tbsTable
		beBordered;
		with: [ self renderTableHeaderOn: html.
			html
				tableBody: [ articles
						do: [ :each | 
							self
								renderArticle: each
								order: order
								on: html.
							order := order + 1 ] ] ]