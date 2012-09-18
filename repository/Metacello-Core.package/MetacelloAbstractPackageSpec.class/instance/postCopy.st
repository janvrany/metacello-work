"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: copying
"
postCopy

	super postCopy.
	requires := requires copy.
	includes := includes copy.
	answers := answers copy.
