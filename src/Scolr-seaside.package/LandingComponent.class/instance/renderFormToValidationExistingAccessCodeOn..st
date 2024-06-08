rendering
renderFormToValidationExistingAccessCodeOn: html

	html paragraph: [
		html tbsForm: [
			html textInput
				callback: [ :value | accessCode := value trim ];
				tbsFormControl;
				autocomplete: 'scolr-access-code';
				size: 40;
				placeholder: 'code to access your review'.
			html break.
			html tbsButton
				callback: [ self validateAccessCode ];
				beSmall;
				bePrimary;
				with: 'Proceed with that code' ] ].
