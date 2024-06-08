rendering
renderDisplayingOn: html

	self renderOpenInNewTabIconOn: html.
	self
		renderDisplaying: self coReview title
		labeled: 'Title: '
		tooltip: self class titleTooltip
		on: html.
	self
		renderDisplaying: self coReview objective
		labeled: 'Objective: '
		tooltip: self class objectiveTooltip
		on: html.
	self
		renderDisplaying: self coReview researchQuestions
		labeled: 'Research questions: '
		tooltip: self class researchQuestionsTooltip
		on: html.
	self
		renderDisplaying: self coReview inclusionCriteria
		labeled: 'Inclusion criteria: '
		tooltip: self class inclusionCriteriaTooltip
		on: html.
	self
		renderDisplaying: self coReview exclusionCriteria
		labeled: 'Exclusion criteria: '
		tooltip: self class exclusionCriteriaTooltip
		on: html.
	self
		renderDisplaying: self coReview terms
		labeled: 'Major terms (and synonyms): '
		tooltip: self class termsTooltip
		on: html.
	self
		renderDisplaying: self coReview basicSearchQuery 
		labeled: 'Basic search query: '
		tooltip: self class basicSearchQueryTooltip
		on: html.
	self
		renderDisplaying: self coReview databases
		labeled: 'Databases: '
		tooltip: self class databasesTooltip
		on: html.
	html paragraph: [ 
		html
			strong: 'Notes';
			preformatted: self coReview notes ].
	html paragraph: [ html strong: 'Contributors: ' ].
	html paragraph: [ 
		self coReview contributors
			do: [ :user | html text: user username ]
			separatedBy: [ html text: ', ' ] ].
	spawned ifTrue: [ ^ self ].
	html anchor
		callback: [ self edit ];
		with: [ 
			html tbsButton
				beExtraSmall;
				with: 'Edit' ].
	self renderAICriticButtonIfEnabledOn: html