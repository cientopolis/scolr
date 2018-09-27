rendering
renderAccessCodeRequestOn: html
	html
		paragraph: [ html
				tbsForm: [ html textInput
						callback: [ :value | accessCode := value ];
						id: 'input';
						size: 40;
						placeholder: 'code to access your review'.
					html space.
					html tbsButton
						beSmall;
						bePrimary;
						with: 'Validate!' ] ].
	html
		paragraph: [ html text: 'Without an access code, you can still '.
			html anchor
				callback: [  ];
				with: 'access all reviews'.
			html text: ' in read-only mode, or you can '.
			html anchor
				callback: [ self generateAccessCode ];
				with: 'request an access code (to start a new review)' ]