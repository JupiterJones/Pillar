tests-parsing
testParsePropertiesWithText
	| wiki text tree document |
	wiki := '{{title: The title}}' , Smalltalk os pillarLineEnding , 'foobar'.
	text := 'foobar'.
	tree := PRDocument new
		propertyAt: 'title' put: 'The title';
		add:
				(PRParagraph new
						add: (PRText content: 'foobar');
						yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text.
	document := PRDocumentParser parse: wiki.
	self assert: document properties equals: tree properties