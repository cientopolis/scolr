rendering
renderDisplayingOn: html
	html heading
		level: 3;
		attributeAt: 'display' put: 'inline-block';
		with: [ html text: 'Review summary'.
			html tbsButton
				tbsPullRight;
				beExtraSmall;
				with: [ html anchor
						callback: [ self edit ];
						with: 'Edit' ] ].
	html paragraph: [ html strong: 'Notes' ].
	html paragraph: (self coReview notes ifEmpty: [ 'This review has not notes. Edit it.' ]).
	html paragraph: [ html strong: 'Inclusion criteria' ].
	html paragraph: self coReview inclusionCriteria.
	html paragraph: [ html strong: 'Exclusion criteria' ].
	html paragraph: self coReview exclusionCriteria.
	html paragraph: [ html strong: 'Contributors' ].
	html paragraph: [ self coReview users do: [ :user | html text: user username ] separatedBy: [ html text: ', ' ] ]