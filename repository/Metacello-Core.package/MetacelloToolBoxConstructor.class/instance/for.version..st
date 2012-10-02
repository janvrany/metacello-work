"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
for: attribute version: aString
	"conditional symbolicVersion support"

	self methodSections
		add:
			((MetacelloSymbolicVersionSpec new)
				attribute: attribute;
				versionString: aString;
				yourself)
