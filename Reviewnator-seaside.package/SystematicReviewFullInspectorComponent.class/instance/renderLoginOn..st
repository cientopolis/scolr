rendering
renderLoginOn: html
	html div
		class: 'loginbox';
		with: [ 
					html
						form: [ 
							html div
								with: 'User name ';
								class: 'loginlabel'.
							html textInput
								class: 'loginfield';
								on: #userName of: self.
							html break.
							html div
								with: 'Password ';
								class: 'loginlabel'.
							html passwordInput
								class: 'loginfield';
								on: #password of: self.
							html break.
							html submitButton
								class: 'loginsubmitbuton';
								callback: [ self login ];
								value: 'Login' ] ]