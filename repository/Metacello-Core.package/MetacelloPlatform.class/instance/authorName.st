"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: utilities
"
authorName

	Smalltalk at: #Author ifPresent: [:cl | ^cl perform: #initials ].
	^'no developer initials'