rendering
renderAllOpinionsOn: html
	self allOpinions
		do: [ :op | 
			html heading
				level: 3;
				with:
						'by ' , op author username
								,
									(op author == user
										ifTrue: [ ' (you)' ]
										ifFalse: [ '' ]).
			self renderOpinion: op on: html ]