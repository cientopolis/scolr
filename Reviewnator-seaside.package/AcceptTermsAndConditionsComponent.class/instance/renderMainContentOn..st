rendering
renderMainContentOn: html
	html heading: 'Terms and conditions'.
	html heading
		level: 2;
		with: 'Scolr is Beta'.
	html paragraph: 'Scolr is in beta state. This means it could break.'.
	html
		paragraph: 'There are "export" buttons in the Report tab of all your projects. Exports (in Markdown and Json format) are your safeguard in case our serve crashes. Export your  projects frequently.'.
	html heading
		level: 2;
		with: 'Privacy of your info'.
	html paragraph: 'Scolr only collects emails. They won''t be shared with any third parties'.
	html heading
		level: 2;
		with: 'Privacy of your content'.
	html
		paragraph: 'Every project you create in Scolr is automatically open (it shows up in the list of open review projects). ';
		paragraph: 'Other users can''t modify it unless you share with them an access code (see below).';
		paragraph: 'You will be able to change this in a future release of Scolr (although the spirit of Scolr are Open Reviews ) . '.
	html heading
		level: 2;
		with: 'Collaboration support'.
	html
		paragraph:
			'Every project you create is only editable by you. Other Scolr users can''t contribute unless you deliberately share with them the access code to your project.'.
	html
		paragraph:
			'For each project, Scolr creates a unique access code. It is almost impossible to guess the code, and hence the access code to your project is known only to you.'.
	html paragraph: 'Please note however, that if you publish the access code to your project on a website or somewhere public, anybody can use it.'.
	html horizontalRule .
	email
		ifNotNil: [ html tbsForm
				with: [ html tbsButton
						callback: [ self configuration userAcceptedTermsAndConditions: email.
							self configuration save.
							self answer: true ];
						with: 'Accept'.
					html space.
					html tbsButton
						callback: [ self answer: false ];
						with: 'Reject' ] ]