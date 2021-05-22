initialize-release
article: anArticle
	| opinion tagAssignment |
	isNewOpinion := false.
	isNewTagAssignment := false.
	article := anArticle.
	opinion := self existingOpinionOrNil.
	opinion
		ifNil: [ isNewOpinion := true.
			opinion := self newOpinion
				author: currentUser;
				date: Date today;
				article: article;
				yourself ].
	tagAssignment := article tagAssignmentBy: currentUser.
	tagAssignment
		ifNil: [ isNewTagAssignment := true.
			tagAssignment := TagAssignment new
				author: currentUser;
				date: Date today;
				article: article;
				yourself ].
	self opinionToEdit: opinion withTagAssignment: tagAssignment