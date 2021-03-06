tests
testParseMixed
	| wiki tree nLine |
	nLine := Smalltalk os pillarLineEnding.
	wiki := ';1' , nLine , ';2' , nLine , ':3' , nLine , ':4'.
	tree := PRDocument new
		add:
				(PRDefinitionList new
						add:
								(PRTermItem new
										add: (PRText content: '1');
										yourself);
						add:
								(PRTermItem new
										add: (PRText content: '2');
										yourself);
						add:
								(PRDataItem new
										add: (PRText content: '3');
										yourself);
						add:
								(PRDataItem new
										add: (PRText content: '4');
										yourself);
						yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki