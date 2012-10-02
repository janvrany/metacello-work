"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: adding
"
addMethodSection: attribute versionString: aString
	self methodSections
		add:
			((MetacelloSymbolicVersionSpec new)
				attribute: attribute;
				versionString: aString;
				yourself)
