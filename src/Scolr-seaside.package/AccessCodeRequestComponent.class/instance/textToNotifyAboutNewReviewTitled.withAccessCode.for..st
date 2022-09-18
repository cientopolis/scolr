email notification
textToNotifyAboutNewReviewTitled: confirmedEmailTitle withAccessCode: confirmedAccessCode for: requestorsEmail
	^ 'Dear ' , requestorsEmail
		,
			'
			
    we are glad to hear about your interest in Scolr. 

    Your ideas for a review titled "' , title
		,
			'" sound very promissing.

    The access code for your literature review is: ' , confirmedAccessCode
		,
			'

    Share it with your collaborators and anyone that offers to help (that is the spirit of open reviews).

    Enjoy,

       The Scolar@Cientopolis team.
       http://scolr.cientopolis.org/
'