updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
			anHtmlRoot javascript
				url: 'https://unpkg.com/showdown/dist/showdown.min.js'.
			anHtmlRoot javascript
				add:
					'function updateContent() {
  var converter = new showdown.Converter();
  var text = document.getElementById("hidden-text").innerText;
  var html = converter.makeHtml(text);
  var isMarkdown = document.getElementById("toggle-checkbox").checked;
  if (isMarkdown) {
    document.getElementById("output").innerText = "\n\n" + text;
  } else {
    document.getElementById("output").innerHTML = html;
  }
};

document.addEventListener(''DOMContentLoaded'', function() {
   updateContent();
}, false);

' 
