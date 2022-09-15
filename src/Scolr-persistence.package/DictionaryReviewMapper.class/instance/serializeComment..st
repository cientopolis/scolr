serialize
serializeComment: aComment
	^ Dictionary new
		at: #authorEmail put: aComment authorEmail;
		at: #offeredAccessCode put: aComment offeredAccessCode;
		at: #text put: aComment text;
		at: #timestamp put: aComment timestamp printString;
		yourself