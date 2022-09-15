rendering-reviews
renderReviewsFor: article considering: dimensions on: html
	| itsReviews |
	itsReviews := self reviewsAsDictionary: article onDimentions: dimensions.
	^ dimensions
		do: [ :dim | 
			html heading
				level: 4;
				with: dim.
			(itsReviews at: dim) notEmpty
				ifTrue: [ (itsReviews at: dim)
						do: [ :each | 
							each value notEmpty
								ifTrue: [ html paragraph: [ html strong: each key , ' wrote:' ].
									self renderMultilineString: each value asParagraphsOn: html ] ] ] ]