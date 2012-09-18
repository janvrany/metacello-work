"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
evaluatePragma: pragma
	currentContext := pragma.
	[ self configuration perform: pragma selector with: self ] ensure: [ currentContext := nil ]