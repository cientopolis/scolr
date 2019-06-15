rendering
renderAllOpinionsOn: html
	self allOpinions
		do: [ :op | 
			html heading
				level: 3;
				with:
						'by ' , op author shortenedUsername
								,
									(op author == currentUser
										ifTrue: [ ' (you)' ]
										ifFalse: [ '' ]).
			self renderOpinion: op on: html ]