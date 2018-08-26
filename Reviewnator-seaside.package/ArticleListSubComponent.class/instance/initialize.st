initialize
initialize
	super initialize.
	activeHidingFilters := Set new.
	sortBlock := self sortDownByYearBlock.
	showClassificationComments := false