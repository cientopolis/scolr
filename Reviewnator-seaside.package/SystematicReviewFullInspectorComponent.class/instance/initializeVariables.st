initialize-release
initializeVariables
	selectedResulSets := Set new.
	activeHidingFilters := Set new.
	sortBlock := self sortDownByYearBlock.
	showClassificationComments := false