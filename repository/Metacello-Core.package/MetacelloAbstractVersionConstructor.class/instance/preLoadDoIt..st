"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
preLoadDoIt: aSymbol

	self validateDoItSelector: aSymbol.
	self root preLoadDoIt: aSymbol