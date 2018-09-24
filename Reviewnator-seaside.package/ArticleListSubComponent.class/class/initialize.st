initialize
initialize
	includedFilter := [ :coReview :article :user | article everyoneAgreesToIncludeIt ].
	excludedFilter := [ :coReview :article :user | article everyoneAgreesToExcludeIt ].
	alreadyClassifiedFilter := [ :coReview :article :user | (article classificationBy: user) notNil ]