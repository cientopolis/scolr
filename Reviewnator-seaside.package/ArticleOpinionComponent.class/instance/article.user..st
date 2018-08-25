initialize-release
article: anObject user: usr

	article := anObject.
	user := usr.
	opinion := self existingOpinionOrNil.
	opinionToEdit := opinion.
	opinionToEdit
		ifNil: 
			[opinionToEdit := (self newOpinion)
						author: usr;
						date: Date today;
						article: article;
						comments: '']