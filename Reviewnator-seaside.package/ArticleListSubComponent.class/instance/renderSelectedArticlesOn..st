renderning
renderSelectedArticlesOn: html

	| articles order  summary |
	articles := self filteredArticles.
	order := 1.
	(html table)
		with: 
				[articles do: 
						[:each |
						summary  := each summaryFor: parent currentUser on: self coReview .
						self renderArticle: each order: order summarizedBy: summary on: html.
						order := order + 1]]