renderning
renderSelectedArticlesOn: html
	| articles order summary |
	articles := self filteredArticles.
	order := 1.
	html tbsTable
		beBordered;
		with: [ self renderTableHeaderOn: html.
			html
				tableBody: [ articles
						do: [ :each | 
							summary := each summaryFor: parent currentUser.
							self
								renderArticle: each
								order: order
								summarizedBy: summary
								on: html.
							order := order + 1 ] ] ]