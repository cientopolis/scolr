rendering
renderAICriticButtonIfEnabledOn: html

	self accessCredential gptEnabled ifFalse: [ ^ self ].

	html space.
	html anchor
		callback: [ self generateTxtGptCritic ];
		with: [ 
			html tbsButton
				beExtraSmall;
				with: 'AI Critic' ]