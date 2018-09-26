rendering
renderEmailRequestOn: html
	html
		break;
		break.
	html
		paragraph: [ html
				text: 'Access code ';
				strong: accessCode;
				text:
					' is valid (and active). Please, provide your email to continue to your review ...' ].
	html
		paragraph: [ html
				tbsForm: [ html textInput
						callback: [ :value | email := value ];
						id: 'input';
						size: 80;
						placeholder: 'your.real.email@yourdomain.com'.
					html space.
					html tbsButton
						beSmall;
						callback: [ self grantAccess ];
						bePrimary;
						with: 'Continue' ] ]