testing
testAsBibtexEntryWithKey_includingTags

	| entry |
	entry := articleOne asBibtexEntryWithKey: 'abcKey'.
	self assert: (entry at: 'scolr_tags') isNil.
	
	articleOne addTagAssignment: (TagAssignment new
			 tags: (Set with: 'aTag');
			 yourself).
	entry := articleOne asBibtexEntryWithKey: 'abcKey'.
	self assert: (entry at: 'scolr_tags') equals: 'aTag'.

	articleOne addTagAssignment: (TagAssignment new
			 tags: (Set with: 'aTag' with: 'bTag');
			 yourself).
	entry := articleOne asBibtexEntryWithKey: 'abcKey'.			
	self assert: (entry at: 'scolr_tags') size equals: 'aTag; bTag' size.
	self assert: ((entry at: 'scolr_tags') includesSubstring: 'Tag; ').
	
		
