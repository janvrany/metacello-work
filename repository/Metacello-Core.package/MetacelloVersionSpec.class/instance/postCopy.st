"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: copying
"
postCopy

	super postCopy.
	blessing := blessing copy.
	description := description copy.
	author := author copy.
	timestamp := timestamp copy.
	