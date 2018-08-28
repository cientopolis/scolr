accessing
contributors
	"Users that did something"

	^ classifications , reviews
		inject: Set new
		into: [ :sub :each | 
			sub
				add: each author;
				yourself ]