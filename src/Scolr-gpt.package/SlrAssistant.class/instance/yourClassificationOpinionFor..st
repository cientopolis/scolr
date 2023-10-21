requests
yourClassificationOpinionFor: anArticle

	| opinionText opinion |
	opinionText := self gptClassificationOpinionFor: anArticle.

	opinionText isEmptyOrNil ifTrue: [ 
		^ Classification new
			  comments: self class gptNotProperlyConfiguredMessage;
			  forget;
			  yourself ].

	opinion := Classification new.
	opinion comments: opinionText.
	(opinion comments asLowercase includesSubstring: 'include') ifTrue: [ 
		^ opinion
			  includeIt;
			  yourself ].


	(opinion comments asLowercase includesSubstring: 'exclude') ifTrue: [ 
		^ opinion
			  excludeIt;
			  yourself ].

	^ opinion
		  forget;
		  yourself