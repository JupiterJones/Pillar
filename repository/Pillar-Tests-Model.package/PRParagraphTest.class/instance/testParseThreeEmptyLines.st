tests-parsing
testParseThreeEmptyLines
	| wiki text tree nLine |
	nLine := Smalltalk os pillarLineEnding.
	wiki := 'Lorem ipsum dolor sit amet.' , nLine , nLine , nLine , 'Nulla mattis elementum nulla.'.
	text := wiki.
	tree := PRDocument new
		add:
				(PRParagraph new
						add: (PRText content: 'Lorem ipsum dolor sit amet.');
						yourself);
		add: PREmptyParagraph new;
		add: PREmptyParagraph new;
		add:
				(PRParagraph new
						add: (PRText content: 'Nulla mattis elementum nulla.');
						yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text