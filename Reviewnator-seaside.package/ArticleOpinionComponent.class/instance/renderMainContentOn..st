rendering
renderMainContentOn: html
	self renderArticleDataOn: html.
	html horizontalRule.
	html
		form: [ 
			html heading
				level: 2;
				with: 'Your opinion'.
			self renderTagsEditorOn: html.
			self renderOpinionEditorOn: html ].
	html horizontalRule.
	html heading
		level: 2;
		with: 'All opinions'.
	self renderAllOpinionsOn: html