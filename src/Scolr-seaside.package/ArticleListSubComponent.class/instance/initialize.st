initialization
initialize
	super initialize.
	activeHidingFilters := Set new.
	sortSelector := #title.
	sortAscending := true.
	showClassificationComments := false