rendering
renderOpenInNewTabIconOn: html

	spawned ifTrue: [ ^ self ].
	html anchor
		callback: [ self spawn ];
		target: '_blank';
		with: [ html tbsGlyphIcon iconFullscreen tbsPullRight ]