rendering
renderTermsOfUsageAdviceOn: html

	html paragraph: [
		html text: 'Before using Scolr '.
		html anchor
			callback: [ self call: AcceptTermsAndConditionsComponent new ];
			with: 'read the terms of usage' ]