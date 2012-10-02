"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: actions
"
copy: specNamed to: spec

	self addMember: 
		(self copyMember 
			name: spec name;
			sourceName: specNamed;
			spec: spec;
			yourself)
