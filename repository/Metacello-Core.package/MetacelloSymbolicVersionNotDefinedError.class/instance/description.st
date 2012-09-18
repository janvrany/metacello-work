"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
description
	"Return a textual description of the exception."

	^'The symbolic version ', self versionString printString, ' is EXPLICITLY not defined in ', self project label, ' for the current platform.'