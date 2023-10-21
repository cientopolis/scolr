rendering
renderEditingOn: html

	html tbsPanel beDefault with: [ 
		html tbsPanelHeading: [ 
			html tbsPanelTitle
				level: 3;
				with: 'Review summary' ].
		html tbsPanelBody: [ 
			html tbsForm: [ 
				self
					renderEditing: #title
					labeled: 'Title'
					tooltip: 'Provide a descriptive title'
					multiline: false
					on: html.


				self
					renderEditing: #objective
					labeled: 'Objective'
					tooltip: self class objectiveTooltip
					multiline: false
					on: html.

				self
					renderEditing: #researchQuestions
					labeled: 'Research questions'
					tooltip: self class researchQuestionsTooltip
					multiline: true
					on: html.


				self
					renderEditing: #inclusionCriteria
					labeled: 'Inclusion criteria'
					tooltip: self class inclusionCriteriaTooltip
					multiline: true
					on: html.

				self
					renderEditing: #exclusionCriteria
					labeled: 'Exclusion criteria'
					tooltip: self class exclusionCriteriaTooltip
					multiline: true
					on: html.

				self
					renderEditing: #terms
					labeled: 'Major terms (and synonyms)'
					tooltip: self class termsTooltip
					multiline: true
					on: html.

				self
					renderEditing: #basicSearchQuery
					labeled: 'Basic search query'
					tooltip: self class basicSearchQueryTooltip
					multiline: true
					on: html.

				self
					renderEditing: #databases
					labeled: 'Databases'
					tooltip: self class databasesTooltip
					multiline: true
					on: html.


				self
					renderEditing: #notes
					labeled: 'Notes'
					tooltip: nil
					multiline: true
					on: html.



				html tbsButton
					beExtraSmall;
					callback: [ self accept ];
					with: 'Save'.
				html space.
				html tbsButton
					beExtraSmall;
					callback: [ isEditing := false ];
					with: 'Cancel' ] ] ]