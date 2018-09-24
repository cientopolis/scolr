initialize
initialize

   includedFilter := [:coReview :article :user | (coReview everyoneAgreesToInclude: article)].
   excludedFilter := [:coReview :article :user | (coReview everyoneAgreesToExclude: article)].
   alreadyClassifiedFilter := [:coReview :article :user | (coReview classificationFor: article by: user) notNil]. 