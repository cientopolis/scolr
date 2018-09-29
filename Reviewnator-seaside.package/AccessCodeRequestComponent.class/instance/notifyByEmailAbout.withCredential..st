email
notifyByEmailAbout: someRepo withCredential: someCredential
	| emailText |
	emailText := 'Dear ' , someCredential requestorsEmail printString
		,
			'
			
    we are glad to hear about your interest in Scolr. 

    Your ideas for a review titled "' , someRepo coReview title
		,
			'" sound very promissing.

    The access code for your literature review is: ' , someCredential accessCode
		,
			'

    Share it with your collaborators and anyone that offers to help (that is the spirit of open reviews).

    Enjoy,

       The Scolar@Cientopolis team
'.
	someCredential requestorsEmail isValidEmail
		ifTrue: [ ReviewnatorDeployer sendEmailTo: someCredential requestorsEmail withText: emailText ]