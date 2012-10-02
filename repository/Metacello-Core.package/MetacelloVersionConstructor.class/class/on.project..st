"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
on: aConfig project: aProject

	^(self new)
		on: aConfig project: aProject;
		yourself
