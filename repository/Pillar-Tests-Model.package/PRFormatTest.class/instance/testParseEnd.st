tests-parsing
testParseEnd
	| wiki text tree |
	wiki := '1' , self actualClass markup , '2' , self actualClass markup.
	text := '12'.
	tree := PRDocument new
		add: (PRParagraph new
			add: (PRText content: '1');
			add: (self actualClass with: (PRText content: '2'));
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text