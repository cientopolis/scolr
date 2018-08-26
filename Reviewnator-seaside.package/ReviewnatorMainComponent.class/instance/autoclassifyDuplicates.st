callbacks
autoclassifyDuplicates
	| robot |
	robot := DuplicateFindingRobot new.
	robot classifyDuplicatesIn: self coReview.
	repository save.