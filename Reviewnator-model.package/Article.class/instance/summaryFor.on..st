summaries
summaryFor: aUser on: aCoReview
	| in out his cls sum coms tags |
	sum := ClassificationSummary for: aUser about: self.
	in := 0.
	out := 0.
	his := 0.
	coms := Set new.
	tags := Set new.
	cls := aCoReview classificationsFor: self.
	cls
		do: [ :each | 
			each toExclude
				ifTrue: [ out := out + 1 ].
			each toInclude
				ifTrue: [ in := in + 1 ].
			each author == aUser
				ifTrue: [ his := his + 1 ].
			coms add: each comments.
			tags addAll: each tags ].
	sum
		included: in;
		excluded: out;
		addClassificationComments: coms;
		addClassificationTags: tags.
	his == 0
		ifTrue: [ sum waiting: 1 ].
	cls size ~= in & (cls size ~= out)
		ifTrue: [ sum disagreement: 1 ].
	^ sum