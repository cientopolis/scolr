rendering
renderFormToRequestAccessCodeOn: html

	html paragraph: [
		html text: 'Alternatively, if you want to start a new review project, you need to ...'.

		html paragraph: [
			html tbsForm: [
				html tbsButton
					callback: [ self generateAccessCode ];
					beSmall;
					bePrimary;
					with: 'Request a new access code' ] ] ]