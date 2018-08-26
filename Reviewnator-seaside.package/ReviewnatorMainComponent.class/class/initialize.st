class initialization
initialize

   includedFilter := [:coReview :article :user | (coReview mostPeopleAgreeToInclude: article)].
   excludedFilter := [:coReview :article :user | (coReview mostPeopleAgreeToExclude: article)].
   alreadyClassifiedFilter := [:coReview :article :user | (coReview classificationFor: article by: user) notNil]. 