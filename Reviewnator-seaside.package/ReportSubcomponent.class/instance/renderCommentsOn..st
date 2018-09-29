rendering-comments
renderCommentsOn: html
	html heading
		level: 2;
		with: 'Comments'.
	html
		paragraph: 'Comments can only be posted by users that contribute to existing reviews. These are the comments that were posted so far:'.
	self coReview comments
		ifEmpty: [ html paragraph: 'There are no comments for this review. Be the first to offer one!' ]
		ifNotEmpty: [ html tbsTable
				beBordered;
				beHover;
				with: [ self renderCommentsTableHeaderOn: html.
					html tableBody: [ self coReview comments do: [ :each | self renderCommentTableRowFor: each on: html ] ] ] ].
	self renderSubmitCommentFormOn: html