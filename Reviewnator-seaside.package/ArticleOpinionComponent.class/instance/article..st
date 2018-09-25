initialize-release
article: anArticle
	| opinion |
	article := anArticle.
	opinion := self existingOpinionOrNil.
	opinion
		ifNil: [ isNewOpinion := true.
			self
				opinionToEdit:
					(self newOpinion
						author: currentUser;
						date: Date today;
						article: article;
						yourself) ]
		ifNotNil: [ self opinionToEdit: opinion.
			isNewOpinion := false ]