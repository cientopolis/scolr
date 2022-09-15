private
visitReview: coReview withAccessCode: code createdOn: creationDate requestedBy: owner
	^ ScolrStatsRecord new
		accessCode: code;
		creationDate: creationDate;
		owner: owner;
		resultSetsCount: coReview resultSets size;
		totalArticleCount: coReview allArticles size;
		includedArticleCount: coReview includedArticles size;
		contributors: coReview users;
		tagCloud: coReview tagsInUse;
		reviewsCount: coReview reviews size;
		yourself