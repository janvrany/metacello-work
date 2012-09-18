"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
validateProject: aMetacelloProject version: versionString debug: debugList

	^self validateProject: aMetacelloProject version: versionString debug: debugList recurse: false
