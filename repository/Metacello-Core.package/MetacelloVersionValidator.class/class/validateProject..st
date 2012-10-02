"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
validateProject: aMetacelloProject

	^self validateProject: aMetacelloProject debug: #() recurse: false
