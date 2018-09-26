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
		paragraph: [ html
				text: 'Use access code ';
				strong: 'demogorgon';
				text: ' for demo access (data will be erased at some point) or ...' ].
	html anchor
		callback: [ self generateAccessCode ];
		with: 'Request your access code (to start a new review)'